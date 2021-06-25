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

-- DATE "06/06/2021 19:43:54"

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

ENTITY 	lab_11 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enter : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	output : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lab_11;

-- Design Ports Information
-- output[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_11 IS
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
SIGNAL ww_enter : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~5_combout\ : std_logic;
SIGNAL \PC[1]~11\ : std_logic;
SIGNAL \PC[2]~12_combout\ : std_logic;
SIGNAL \state.s_decode2~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.s_decode2~q\ : std_logic;
SIGNAL \state.s_decode3~feeder_combout\ : std_logic;
SIGNAL \state.s_decode3~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.s_add~q\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \A[2]~2_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \state.s_input~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.s_dec~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \A[3]~3_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \A[4]~4_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \A[5]~5_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \A[6]~6_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \A[7]~7_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \A[1]~1_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \IR[4]~feeder_combout\ : std_logic;
SIGNAL \PC[2]~13\ : std_logic;
SIGNAL \PC[3]~14_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.s_jmp~q\ : std_logic;
SIGNAL \PC[4]~8_combout\ : std_logic;
SIGNAL \PC[4]~7_combout\ : std_logic;
SIGNAL \PC[4]~9_combout\ : std_logic;
SIGNAL \PC[3]~15\ : std_logic;
SIGNAL \PC[4]~16_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \memory_address[0]~0_combout\ : std_logic;
SIGNAL \IR[3]~feeder_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \IR[2]~feeder_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \IR[0]~feeder_combout\ : std_logic;
SIGNAL \PC[0]~6\ : std_logic;
SIGNAL \PC[1]~10_combout\ : std_logic;
SIGNAL \IR[1]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \IR[6]~feeder_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.s_output~q\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \state.s_start~q\ : std_logic;
SIGNAL \state.s_start2~0_combout\ : std_logic;
SIGNAL \state.s_start2~q\ : std_logic;
SIGNAL \state.s_start3~feeder_combout\ : std_logic;
SIGNAL \state.s_start3~q\ : std_logic;
SIGNAL \state.s_fetch~feeder_combout\ : std_logic;
SIGNAL \state.s_fetch~q\ : std_logic;
SIGNAL \state.s_decode~feeder_combout\ : std_logic;
SIGNAL \state.s_decode~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \IR[5]~feeder_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.s_store~q\ : std_logic;
SIGNAL \state.s_store2~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \MemWr~q\ : std_logic;
SIGNAL \IR[7]~feeder_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.s_load~q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL memory_address : std_logic_vector(4 DOWNTO 0);
SIGNAL PC : std_logic_vector(4 DOWNTO 0);
SIGNAL IR : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enter <= enter;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & A(7) & A(6) & A(5) & A(4) & A(3) & A(2) & A(1) & A(0));

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (memory_address(4) & memory_address(3) & memory_address(2) & memory_address(1) & memory_address(0));

\memory|sram|ram_block|auto_generated|q_a\(0) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|sram|ram_block|auto_generated|q_a\(1) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|sram|ram_block|auto_generated|q_a\(2) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|sram|ram_block|auto_generated|q_a\(3) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|sram|ram_block|auto_generated|q_a\(4) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|sram|ram_block|auto_generated|q_a\(5) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|sram|ram_block|auto_generated|q_a\(6) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|sram|ram_block|auto_generated|q_a\(7) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X8_Y0_N2
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

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

-- Location: LCCOMB_X11_Y6_N18
\PC[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~5_combout\ = PC(0) $ (VCC)
-- \PC[0]~6\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~5_combout\,
	cout => \PC[0]~6\);

-- Location: LCCOMB_X11_Y6_N20
\PC[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[1]~10_combout\ = (PC(1) & (!\PC[0]~6\)) # (!PC(1) & ((\PC[0]~6\) # (GND)))
-- \PC[1]~11\ = CARRY((!\PC[0]~6\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~6\,
	combout => \PC[1]~10_combout\,
	cout => \PC[1]~11\);

-- Location: LCCOMB_X11_Y6_N22
\PC[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[2]~12_combout\ = (PC(2) & (\PC[1]~11\ $ (GND))) # (!PC(2) & (!\PC[1]~11\ & VCC))
-- \PC[2]~13\ = CARRY((PC(2) & !\PC[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \PC[1]~11\,
	combout => \PC[2]~12_combout\,
	cout => \PC[2]~13\);

-- Location: LCCOMB_X12_Y6_N10
\state.s_decode2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_decode2~feeder_combout\ = \state.s_decode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_decode~q\,
	combout => \state.s_decode2~feeder_combout\);

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

-- Location: FF_X12_Y6_N11
\state.s_decode2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_decode2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode2~q\);

-- Location: LCCOMB_X12_Y6_N28
\state.s_decode3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_decode3~feeder_combout\ = \state.s_decode2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_decode2~q\,
	combout => \state.s_decode3~feeder_combout\);

-- Location: FF_X12_Y6_N29
\state.s_decode3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_decode3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode3~q\);

-- Location: LCCOMB_X10_Y6_N8
\state~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (IR(6) & (!IR(7) & (\state.s_decode3~q\ & !IR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => \state.s_decode3~q\,
	datad => IR(5),
	combout => \state~20_combout\);

-- Location: FF_X10_Y6_N9
\state.s_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_add~q\);

-- Location: LCCOMB_X8_Y6_N4
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(2)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X8_Y6_N6
\Add1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(1)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X8_Y6_N28
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(0)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X8_Y6_N10
\Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (A(0) & (\Add1~0_combout\ $ (VCC))) # (!A(0) & (\Add1~0_combout\ & VCC))
-- \Add1~2\ = CARRY((A(0) & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add1~1_combout\,
	cout => \Add1~2\);

-- Location: LCCOMB_X8_Y6_N12
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add1~3_combout\ & ((A(1) & (\Add1~2\ & VCC)) # (!A(1) & (!\Add1~2\)))) # (!\Add1~3_combout\ & ((A(1) & (!\Add1~2\)) # (!A(1) & ((\Add1~2\) # (GND)))))
-- \Add1~5\ = CARRY((\Add1~3_combout\ & (!A(1) & !\Add1~2\)) # (!\Add1~3_combout\ & ((!\Add1~2\) # (!A(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => A(1),
	datad => VCC,
	cin => \Add1~2\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X8_Y6_N14
\Add1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = ((A(2) $ (\Add1~6_combout\ $ (!\Add1~5\)))) # (GND)
-- \Add1~8\ = CARRY((A(2) & ((\Add1~6_combout\) # (!\Add1~5\))) # (!A(2) & (\Add1~6_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(2),
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~7_combout\,
	cout => \Add1~8\);

-- Location: LCCOMB_X9_Y6_N6
\A[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[2]~2_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(2))) # (!\state.s_load~q\ & ((\Add1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(2),
	datad => \Add1~7_combout\,
	combout => \A[2]~2_combout\);

-- Location: IOIBUF_X22_Y0_N1
\input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\enter~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LCCOMB_X12_Y6_N2
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (IR(7) & (!IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X12_Y6_N22
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((!\enter~input_o\ & \state.s_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enter~input_o\,
	datac => \state.s_input~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X12_Y6_N23
\state.s_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_input~q\);

-- Location: LCCOMB_X12_Y6_N16
\state~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (!IR(7) & (IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~22_combout\);

-- Location: FF_X12_Y6_N17
\state.s_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_dec~q\);

-- Location: LCCOMB_X9_Y6_N12
\WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\state.s_input~q\) # ((\state.s_dec~q\) # ((\state.s_add~q\) # (\state.s_load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_input~q\,
	datab => \state.s_dec~q\,
	datac => \state.s_add~q\,
	datad => \state.s_load~q\,
	combout => \WideOr5~0_combout\);

-- Location: FF_X9_Y6_N7
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[2]~2_combout\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X8_Y6_N30
\Add1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(3)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \Add1~9_combout\);

-- Location: LCCOMB_X8_Y6_N16
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~9_combout\ & ((A(3) & (\Add1~8\ & VCC)) # (!A(3) & (!\Add1~8\)))) # (!\Add1~9_combout\ & ((A(3) & (!\Add1~8\)) # (!A(3) & ((\Add1~8\) # (GND)))))
-- \Add1~11\ = CARRY((\Add1~9_combout\ & (!A(3) & !\Add1~8\)) # (!\Add1~9_combout\ & ((!\Add1~8\) # (!A(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~9_combout\,
	datab => A(3),
	datad => VCC,
	cin => \Add1~8\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X9_Y6_N0
\A[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[3]~3_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(3))) # (!\state.s_load~q\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|sram|ram_block|auto_generated|q_a\(3),
	datab => \state.s_load~q\,
	datad => \Add1~10_combout\,
	combout => \A[3]~3_combout\);

-- Location: IOIBUF_X22_Y0_N8
\input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X9_Y6_N1
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[3]~3_combout\,
	asdata => \input[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X9_Y6_N30
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(4)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X8_Y6_N18
\Add1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = ((\Add1~12_combout\ $ (A(4) $ (!\Add1~11\)))) # (GND)
-- \Add1~14\ = CARRY((\Add1~12_combout\ & ((A(4)) # (!\Add1~11\))) # (!\Add1~12_combout\ & (A(4) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => A(4),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~13_combout\,
	cout => \Add1~14\);

-- Location: LCCOMB_X8_Y6_N2
\A[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[4]~4_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(4))) # (!\state.s_load~q\ & ((\Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(4),
	datad => \Add1~13_combout\,
	combout => \A[4]~4_combout\);

-- Location: IOIBUF_X12_Y31_N8
\input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: FF_X8_Y6_N3
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[4]~4_combout\,
	asdata => \input[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LCCOMB_X9_Y6_N4
\Add1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(5)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \Add1~15_combout\);

-- Location: LCCOMB_X8_Y6_N20
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add1~15_combout\ & ((A(5) & (\Add1~14\ & VCC)) # (!A(5) & (!\Add1~14\)))) # (!\Add1~15_combout\ & ((A(5) & (!\Add1~14\)) # (!A(5) & ((\Add1~14\) # (GND)))))
-- \Add1~17\ = CARRY((\Add1~15_combout\ & (!A(5) & !\Add1~14\)) # (!\Add1~15_combout\ & ((!\Add1~14\) # (!A(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => A(5),
	datad => VCC,
	cin => \Add1~14\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X9_Y6_N10
\A[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[5]~5_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(5))) # (!\state.s_load~q\ & ((\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(5),
	datad => \Add1~16_combout\,
	combout => \A[5]~5_combout\);

-- Location: IOIBUF_X20_Y0_N8
\input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X9_Y6_N11
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[5]~5_combout\,
	asdata => \input[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: LCCOMB_X9_Y6_N2
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(6)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(6),
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X8_Y6_N22
\Add1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = ((\Add1~18_combout\ $ (A(6) $ (!\Add1~17\)))) # (GND)
-- \Add1~20\ = CARRY((\Add1~18_combout\ & ((A(6)) # (!\Add1~17\))) # (!\Add1~18_combout\ & (A(6) & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => A(6),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X8_Y6_N8
\A[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[6]~6_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(6))) # (!\state.s_load~q\ & ((\Add1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(6),
	datad => \Add1~19_combout\,
	combout => \A[6]~6_combout\);

-- Location: IOIBUF_X12_Y0_N8
\input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: FF_X8_Y6_N9
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[6]~6_combout\,
	asdata => \input[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LCCOMB_X9_Y6_N16
\Add1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\memory|sram|ram_block|auto_generated|q_a\(7)) # (!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(7),
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X8_Y6_N24
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = A(7) $ (\Add1~20\ $ (\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(7),
	datad => \Add1~21_combout\,
	cin => \Add1~20\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X8_Y6_N26
\A[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[7]~7_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(7))) # (!\state.s_load~q\ & ((\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|sram|ram_block|auto_generated|q_a\(7),
	datab => \state.s_load~q\,
	datad => \Add1~22_combout\,
	combout => \A[7]~7_combout\);

-- Location: IOIBUF_X24_Y0_N1
\input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: FF_X8_Y6_N27
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[7]~7_combout\,
	asdata => \input[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: M9K_X7_Y6_N0
\memory|sram|ram_block|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF0007800C2000FC007F0007C003E00178001F000FC0080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program_lab11.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:memory|altram:sram|altsyncram:ram_block|altsyncram_oca1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemWr~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X8_Y6_N0
\A[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[1]~1_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(1))) # (!\state.s_load~q\ & ((\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(1),
	datad => \Add1~4_combout\,
	combout => \A[1]~1_combout\);

-- Location: IOIBUF_X33_Y16_N1
\input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X8_Y6_N1
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[1]~1_combout\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X11_Y6_N30
\IR[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[4]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \IR[4]~feeder_combout\);

-- Location: FF_X11_Y6_N31
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: LCCOMB_X11_Y6_N24
\PC[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[3]~14_combout\ = (PC(3) & (!\PC[2]~13\)) # (!PC(3) & ((\PC[2]~13\) # (GND)))
-- \PC[3]~15\ = CARRY((!\PC[2]~13\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \PC[2]~13\,
	combout => \PC[3]~14_combout\,
	cout => \PC[3]~15\);

-- Location: LCCOMB_X12_Y6_N20
\state~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (IR(7) & (!IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~24_combout\);

-- Location: FF_X12_Y6_N21
\state.s_jmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_jmp~q\);

-- Location: LCCOMB_X9_Y6_N18
\PC[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[4]~8_combout\ = (A(7)) # ((A(0)) # ((A(1)) # (A(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(7),
	datab => A(0),
	datac => A(1),
	datad => A(2),
	combout => \PC[4]~8_combout\);

-- Location: LCCOMB_X11_Y6_N16
\PC[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[4]~7_combout\ = (!A(4) & (!A(3) & (!A(6) & !A(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(4),
	datab => A(3),
	datac => A(6),
	datad => A(5),
	combout => \PC[4]~7_combout\);

-- Location: LCCOMB_X11_Y6_N14
\PC[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[4]~9_combout\ = (\state.s_jmp~q\ & (((\PC[4]~8_combout\) # (!\PC[4]~7_combout\)))) # (!\state.s_jmp~q\ & (\state.s_fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_jmp~q\,
	datab => \state.s_fetch~q\,
	datac => \PC[4]~8_combout\,
	datad => \PC[4]~7_combout\,
	combout => \PC[4]~9_combout\);

-- Location: FF_X11_Y6_N25
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[3]~14_combout\,
	asdata => IR(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmp~q\,
	ena => \PC[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X11_Y6_N26
\PC[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[4]~16_combout\ = PC(4) $ (!\PC[3]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	cin => \PC[3]~15\,
	combout => \PC[4]~16_combout\);

-- Location: FF_X11_Y6_N27
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[4]~16_combout\,
	asdata => IR(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmp~q\,
	ena => \PC[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X10_Y6_N22
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.s_decode~q\ & (IR(4))) # (!\state.s_decode~q\ & ((PC(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_decode~q\,
	datac => IR(4),
	datad => PC(4),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X10_Y6_N18
\memory_address[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memory_address[0]~0_combout\ = (!\reset~input_o\ & ((\state.s_decode~q\) # (!\state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_decode~q\,
	datac => \state.s_start~q\,
	datad => \reset~input_o\,
	combout => \memory_address[0]~0_combout\);

-- Location: FF_X10_Y6_N23
\memory_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(4));

-- Location: LCCOMB_X9_Y6_N28
\IR[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[3]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \IR[3]~feeder_combout\);

-- Location: FF_X9_Y6_N29
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X10_Y6_N24
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s_decode~q\ & (IR(3))) # (!\state.s_decode~q\ & ((PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_decode~q\,
	datac => IR(3),
	datad => PC(3),
	combout => \Selector1~0_combout\);

-- Location: FF_X10_Y6_N25
\memory_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(3));

-- Location: LCCOMB_X11_Y6_N28
\IR[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[2]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \IR[2]~feeder_combout\);

-- Location: FF_X11_Y6_N29
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: FF_X11_Y6_N23
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[2]~12_combout\,
	asdata => IR(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmp~q\,
	ena => \PC[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X10_Y6_N26
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_decode~q\ & ((IR(2)))) # (!\state.s_decode~q\ & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_decode~q\,
	datac => PC(2),
	datad => IR(2),
	combout => \Selector2~0_combout\);

-- Location: FF_X10_Y6_N27
\memory_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(2));

-- Location: LCCOMB_X11_Y6_N12
\IR[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[0]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \IR[0]~feeder_combout\);

-- Location: FF_X11_Y6_N13
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: FF_X11_Y6_N19
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[0]~5_combout\,
	asdata => IR(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmp~q\,
	ena => \PC[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X11_Y6_N2
\IR[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[1]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \IR[1]~feeder_combout\);

-- Location: FF_X11_Y6_N3
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: FF_X11_Y6_N21
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[1]~10_combout\,
	asdata => IR(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jmp~q\,
	ena => \PC[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X10_Y6_N12
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s_decode~q\ & ((IR(1)))) # (!\state.s_decode~q\ & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_decode~q\,
	datac => PC(1),
	datad => IR(1),
	combout => \Selector3~0_combout\);

-- Location: FF_X10_Y6_N13
\memory_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(1));

-- Location: LCCOMB_X9_Y6_N26
\IR[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[6]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(6),
	combout => \IR[6]~feeder_combout\);

-- Location: FF_X9_Y6_N27
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LCCOMB_X12_Y6_N14
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (IR(7) & (IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X12_Y6_N30
\state~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (IR(7) & (IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~25_combout\);

-- Location: FF_X12_Y6_N31
\state.s_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_output~q\);

-- Location: LCCOMB_X12_Y6_N8
\Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\state.s_output~q\) # ((\state.s_jmp~q\) # ((\state.s_input~q\ & \enter~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_output~q\,
	datab => \state.s_input~q\,
	datac => \enter~input_o\,
	datad => \state.s_jmp~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X12_Y6_N12
\Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\state.s_store2~q\) # ((\state.s_dec~q\) # ((\state.s_add~q\) # (\state.s_load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_store2~q\,
	datab => \state.s_dec~q\,
	datac => \state.s_add~q\,
	datad => \state.s_load~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (!\Selector5~0_combout\ & (!\Selector5~2_combout\ & !\Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \Selector5~2_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~3_combout\);

-- Location: FF_X12_Y6_N1
\state.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start~q\);

-- Location: LCCOMB_X10_Y6_N16
\state.s_start2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_start2~0_combout\ = !\state.s_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_start~q\,
	combout => \state.s_start2~0_combout\);

-- Location: FF_X10_Y6_N17
\state.s_start2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start2~q\);

-- Location: LCCOMB_X10_Y6_N10
\state.s_start3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_start3~feeder_combout\ = \state.s_start2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start2~q\,
	combout => \state.s_start3~feeder_combout\);

-- Location: FF_X10_Y6_N11
\state.s_start3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start3~q\);

-- Location: LCCOMB_X10_Y6_N20
\state.s_fetch~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_fetch~feeder_combout\ = \state.s_start3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start3~q\,
	combout => \state.s_fetch~feeder_combout\);

-- Location: FF_X10_Y6_N21
\state.s_fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_fetch~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_fetch~q\);

-- Location: LCCOMB_X10_Y6_N28
\state.s_decode~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_decode~feeder_combout\ = \state.s_fetch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_fetch~q\,
	combout => \state.s_decode~feeder_combout\);

-- Location: FF_X10_Y6_N29
\state.s_decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_decode~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode~q\);

-- Location: LCCOMB_X10_Y6_N14
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_decode~q\ & (IR(0))) # (!\state.s_decode~q\ & ((PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_decode~q\,
	datac => IR(0),
	datad => PC(0),
	combout => \Selector4~0_combout\);

-- Location: FF_X10_Y6_N15
\memory_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(0));

-- Location: LCCOMB_X9_Y6_N14
\IR[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[5]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \IR[5]~feeder_combout\);

-- Location: FF_X9_Y6_N15
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: LCCOMB_X12_Y6_N4
\state~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (!IR(7) & (IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~23_combout\);

-- Location: FF_X12_Y6_N5
\state.s_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store~q\);

-- Location: FF_X12_Y6_N7
\state.s_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_store~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store2~q\);

-- Location: LCCOMB_X12_Y6_N18
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.s_store~q\) # ((!\state.s_store2~q\ & \MemWr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_store2~q\,
	datab => \state.s_store~q\,
	datac => \MemWr~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X12_Y6_N19
MemWr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemWr~q\);

-- Location: LCCOMB_X9_Y6_N24
\IR[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[7]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(7),
	combout => \IR[7]~feeder_combout\);

-- Location: FF_X9_Y6_N25
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: LCCOMB_X12_Y6_N24
\state~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!IR(7) & (!IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~21_combout\);

-- Location: FF_X12_Y6_N25
\state.s_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_load~q\);

-- Location: LCCOMB_X9_Y6_N20
\A[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(0))) # (!\state.s_load~q\ & ((\Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(0),
	datad => \Add1~1_combout\,
	combout => \A[0]~0_combout\);

-- Location: IOIBUF_X33_Y16_N8
\input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: FF_X9_Y6_N21
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[0]~0_combout\,
	asdata => \input[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;
END structure;


