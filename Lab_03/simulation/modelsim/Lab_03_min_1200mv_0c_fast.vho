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

-- DATE "03/30/2021 13:46:03"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_03 IS
    PORT (
	Clock : IN std_logic;
	reset : IN std_logic;
	Load_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	S : IN std_logic;
	state_out : BUFFER std_logic_vector(1 DOWNTO 0);
	Done : BUFFER std_logic;
	B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Lab_03;

-- Design Ports Information
-- state_out[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Done	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_A	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Load_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic;
SIGNAL ww_state_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Done : std_logic;
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state_out[0]~output_o\ : std_logic;
SIGNAL \state_out[1]~output_o\ : std_logic;
SIGNAL \Done~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Load_A~input_o\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \state_out[1]~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_out[1]~reg0_q\ : std_logic;
SIGNAL \state_A[7]~0_combout\ : std_logic;
SIGNAL \state_out[0]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \state_A[6]~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \state_A[7]~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \state_A[6]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \state_A[6]~1_combout\ : std_logic;
SIGNAL \state_out[0]~1_combout\ : std_logic;
SIGNAL \state_out[0]~reg0_q\ : std_logic;
SIGNAL \Done~0_combout\ : std_logic;
SIGNAL \Done~reg0_q\ : std_logic;
SIGNAL \state_B[0]~4_combout\ : std_logic;
SIGNAL \state_B[0]~6_combout\ : std_logic;
SIGNAL \state_B[0]~5\ : std_logic;
SIGNAL \state_B[1]~7_combout\ : std_logic;
SIGNAL \state_B[1]~8\ : std_logic;
SIGNAL \state_B[2]~9_combout\ : std_logic;
SIGNAL \state_B[2]~10\ : std_logic;
SIGNAL \state_B[3]~11_combout\ : std_logic;
SIGNAL state_B : std_logic_vector(3 DOWNTO 0);
SIGNAL state_A : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_reset <= reset;
ww_Load_A <= Load_A;
ww_A <= A;
ww_S <= S;
state_out <= ww_state_out;
Done <= ww_Done;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: IOOBUF_X18_Y24_N23
\state_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \state_out[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\state_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \state_out[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\Done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Done~reg0_q\,
	devoe => ww_devoe,
	o => \Done~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state_B(0),
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state_B(1),
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state_B(2),
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state_B(3),
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y24_N22
\Load_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load_A,
	o => \Load_A~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\S~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X22_Y19_N22
\state_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_out[1]~2_combout\ = (\state_out[1]~reg0_q\) # ((\state_out[0]~reg0_q\ & \S~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_out[0]~reg0_q\,
	datab => \S~input_o\,
	datac => \state_out[1]~reg0_q\,
	combout => \state_out[1]~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X22_Y19_N23
\state_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_out[1]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_out[1]~reg0_q\);

-- Location: LCCOMB_X22_Y19_N30
\state_A[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_A[7]~0_combout\ = (!\state_out[0]~reg0_q\ & (\Load_A~input_o\ & !\state_out[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_out[0]~reg0_q\,
	datac => \Load_A~input_o\,
	datad => \state_out[1]~reg0_q\,
	combout => \state_A[7]~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\state_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_out[0]~0_combout\ = (\state_out[0]~reg0_q\ & ((\state_out[1]~reg0_q\) # (!\S~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \state_out[0]~reg0_q\,
	datad => \state_out[1]~reg0_q\,
	combout => \state_out[0]~0_combout\);

-- Location: IOIBUF_X16_Y24_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X22_Y19_N18
\state_A[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_A[6]~2_combout\ = (!\state_out[0]~reg0_q\ & ((\Load_A~input_o\) # (\state_out[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_A~input_o\,
	datac => \state_out[1]~reg0_q\,
	datad => \state_out[0]~reg0_q\,
	combout => \state_A[6]~2_combout\);

-- Location: IOIBUF_X23_Y24_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X23_Y19_N12
\state_A[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_A[7]~3_combout\ = (\state_A[6]~2_combout\ & (\A[7]~input_o\ & ((\state_A[7]~0_combout\)))) # (!\state_A[6]~2_combout\ & ((state_A(7)) # ((\A[7]~input_o\ & \state_A[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_A[6]~2_combout\,
	datab => \A[7]~input_o\,
	datac => state_A(7),
	datad => \state_A[7]~0_combout\,
	combout => \state_A[7]~3_combout\);

-- Location: FF_X23_Y19_N13
\state_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_A[7]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(7));

-- Location: LCCOMB_X23_Y19_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\state_out[1]~reg0_q\ & ((state_A(7)))) # (!\state_out[1]~reg0_q\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_out[1]~reg0_q\,
	datac => \A[6]~input_o\,
	datad => state_A(7),
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X28_Y24_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X23_Y19_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\state_out[1]~reg0_q\ & (state_A(6))) # (!\state_out[1]~reg0_q\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_A(6),
	datac => \A[5]~input_o\,
	datad => \state_out[1]~reg0_q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X23_Y19_N25
\state_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(5));

-- Location: IOIBUF_X16_Y24_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X23_Y19_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\state_out[1]~reg0_q\ & (state_A(5))) # (!\state_out[1]~reg0_q\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_A(5),
	datac => \A[4]~input_o\,
	datad => \state_out[1]~reg0_q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X23_Y19_N15
\state_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(4));

-- Location: IOIBUF_X23_Y24_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X23_Y19_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\state_out[1]~reg0_q\ & (state_A(4))) # (!\state_out[1]~reg0_q\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_out[1]~reg0_q\,
	datac => state_A(4),
	datad => \A[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: FF_X23_Y19_N23
\state_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(3));

-- Location: IOIBUF_X28_Y24_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X23_Y19_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\state_out[1]~reg0_q\ & ((state_A(3)))) # (!\state_out[1]~reg0_q\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_out[1]~reg0_q\,
	datac => \A[2]~input_o\,
	datad => state_A(3),
	combout => \Mux7~0_combout\);

-- Location: FF_X23_Y19_N5
\state_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(2));

-- Location: IOIBUF_X28_Y24_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X23_Y19_N18
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\state_out[1]~reg0_q\ & (state_A(2))) # (!\state_out[1]~reg0_q\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_out[1]~reg0_q\,
	datac => state_A(2),
	datad => \A[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X23_Y19_N19
\state_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(1));

-- Location: IOIBUF_X28_Y24_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X23_Y19_N20
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\state_out[1]~reg0_q\ & (state_A(1))) # (!\state_out[1]~reg0_q\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_out[1]~reg0_q\,
	datac => state_A(1),
	datad => \A[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X23_Y19_N21
\state_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(0));

-- Location: LCCOMB_X23_Y19_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!state_A(3) & (!state_A(1) & (!state_A(2) & !state_A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_A(3),
	datab => state_A(1),
	datac => state_A(2),
	datad => state_A(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y19_N28
\state_A[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_A[6]~4_combout\ = (\state_A[6]~2_combout\ & (((!\Equal0~0_combout\) # (!\state_out[1]~reg0_q\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \state_out[1]~reg0_q\,
	datac => \Equal0~0_combout\,
	datad => \state_A[6]~2_combout\,
	combout => \state_A[6]~4_combout\);

-- Location: FF_X23_Y19_N31
\state_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_A[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_A(6));

-- Location: LCCOMB_X23_Y19_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!state_A(6) & (!state_A(5) & (!state_A(4) & !state_A(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_A(6),
	datab => state_A(5),
	datac => state_A(4),
	datad => state_A(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\state_A[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_A[6]~1_combout\ = (\state_out[1]~reg0_q\ & (\Equal0~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_out[1]~reg0_q\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \state_A[6]~1_combout\);

-- Location: LCCOMB_X22_Y19_N20
\state_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_out[0]~1_combout\ = (\state_A[7]~0_combout\) # ((\state_out[0]~0_combout\) # (\state_A[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_A[7]~0_combout\,
	datac => \state_out[0]~0_combout\,
	datad => \state_A[6]~1_combout\,
	combout => \state_out[0]~1_combout\);

-- Location: FF_X22_Y19_N21
\state_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_out[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_out[0]~reg0_q\);

-- Location: LCCOMB_X22_Y19_N24
\Done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Done~0_combout\ = (\Done~reg0_q\) # ((!\state_out[0]~reg0_q\ & \state_A[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_out[0]~reg0_q\,
	datac => \Done~reg0_q\,
	datad => \state_A[6]~1_combout\,
	combout => \Done~0_combout\);

-- Location: FF_X22_Y19_N25
\Done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Done~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Done~reg0_q\);

-- Location: LCCOMB_X22_Y19_N8
\state_B[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_B[0]~4_combout\ = (state_A(0) & (state_B(0) $ (VCC))) # (!state_A(0) & (state_B(0) & VCC))
-- \state_B[0]~5\ = CARRY((state_A(0) & state_B(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_A(0),
	datab => state_B(0),
	datad => VCC,
	combout => \state_B[0]~4_combout\,
	cout => \state_B[0]~5\);

-- Location: LCCOMB_X22_Y19_N16
\state_B[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_B[0]~6_combout\ = (\state_out[1]~reg0_q\ & (!\state_out[0]~reg0_q\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_out[1]~reg0_q\,
	datab => \state_out[0]~reg0_q\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \state_B[0]~6_combout\);

-- Location: FF_X22_Y19_N9
\state_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_B[0]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_B(0));

-- Location: LCCOMB_X22_Y19_N10
\state_B[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_B[1]~7_combout\ = (state_B(1) & (!\state_B[0]~5\)) # (!state_B(1) & ((\state_B[0]~5\) # (GND)))
-- \state_B[1]~8\ = CARRY((!\state_B[0]~5\) # (!state_B(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_B(1),
	datad => VCC,
	cin => \state_B[0]~5\,
	combout => \state_B[1]~7_combout\,
	cout => \state_B[1]~8\);

-- Location: FF_X22_Y19_N11
\state_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_B[1]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_B(1));

-- Location: LCCOMB_X22_Y19_N12
\state_B[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_B[2]~9_combout\ = (state_B(2) & (\state_B[1]~8\ $ (GND))) # (!state_B(2) & (!\state_B[1]~8\ & VCC))
-- \state_B[2]~10\ = CARRY((state_B(2) & !\state_B[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => state_B(2),
	datad => VCC,
	cin => \state_B[1]~8\,
	combout => \state_B[2]~9_combout\,
	cout => \state_B[2]~10\);

-- Location: FF_X22_Y19_N13
\state_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_B[2]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_B(2));

-- Location: LCCOMB_X22_Y19_N14
\state_B[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_B[3]~11_combout\ = state_B(3) $ (\state_B[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => state_B(3),
	cin => \state_B[2]~10\,
	combout => \state_B[3]~11_combout\);

-- Location: FF_X22_Y19_N15
\state_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \state_B[3]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state_B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_B(3));

ww_state_out(0) <= \state_out[0]~output_o\;

ww_state_out(1) <= \state_out[1]~output_o\;

ww_Done <= \Done~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


