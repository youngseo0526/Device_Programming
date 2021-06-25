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

-- DATE "05/22/2021 02:58:53"

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

ENTITY 	dp IS
    PORT (
	Clock : IN std_logic;
	Clear : IN std_logic;
	Input : IN std_logic_vector(7 DOWNTO 0);
	IRload : IN std_logic;
	PCload : IN std_logic;
	INmux : IN std_logic;
	Aload : IN std_logic;
	JNZmux : IN std_logic;
	IR : OUT std_logic_vector(7 DOWNTO 5);
	Xneq0 : OUT std_logic;
	Output : OUT std_logic_vector(7 DOWNTO 0)
	);
END dp;

-- Design Ports Information
-- IR[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xneq0	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRload	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INmux	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aload	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[5]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JNZmux	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCload	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dp IS
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
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IRload : std_logic;
SIGNAL ww_PCload : std_logic;
SIGNAL ww_INmux : std_logic;
SIGNAL ww_Aload : std_logic;
SIGNAL ww_JNZmux : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 5);
SIGNAL ww_Xneq0 : std_logic;
SIGNAL ww_Output : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR[5]~output_o\ : std_logic;
SIGNAL \IR[6]~output_o\ : std_logic;
SIGNAL \IR[7]~output_o\ : std_logic;
SIGNAL \Xneq0~output_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[4]~output_o\ : std_logic;
SIGNAL \Output[5]~output_o\ : std_logic;
SIGNAL \Output[6]~output_o\ : std_logic;
SIGNAL \Output[7]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \IRload~input_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \JNZmux~input_o\ : std_logic;
SIGNAL \U3_inc|Add0~0_combout\ : std_logic;
SIGNAL \U1_JNZmux|Y[3]~4_combout\ : std_logic;
SIGNAL \PCload~input_o\ : std_logic;
SIGNAL \U1_JNZmux|Y[2]~2_combout\ : std_logic;
SIGNAL \U1_JNZmux|Y[2]~3_combout\ : std_logic;
SIGNAL \U1_JNZmux|Y[1]~1_combout\ : std_logic;
SIGNAL \U1_JNZmux|Y[0]~0_combout\ : std_logic;
SIGNAL \U6_A|Q[0]~8_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \INmux~input_o\ : std_logic;
SIGNAL \Aload~input_o\ : std_logic;
SIGNAL \U6_A|Q[0]~9\ : std_logic;
SIGNAL \U6_A|Q[1]~10_combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \U6_A|Q[1]~11\ : std_logic;
SIGNAL \U6_A|Q[2]~12_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \U6_A|Q[2]~13\ : std_logic;
SIGNAL \U6_A|Q[3]~14_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \U6_A|Q[3]~15\ : std_logic;
SIGNAL \U6_A|Q[4]~16_combout\ : std_logic;
SIGNAL \Input[4]~input_o\ : std_logic;
SIGNAL \U6_A|Q[4]~17\ : std_logic;
SIGNAL \U6_A|Q[5]~18_combout\ : std_logic;
SIGNAL \Input[5]~input_o\ : std_logic;
SIGNAL \U6_A|Q[5]~19\ : std_logic;
SIGNAL \U6_A|Q[6]~20_combout\ : std_logic;
SIGNAL \Input[6]~input_o\ : std_logic;
SIGNAL \U6_A|Q[6]~21\ : std_logic;
SIGNAL \U6_A|Q[7]~22_combout\ : std_logic;
SIGNAL \Input[7]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \U6_A|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0_IR|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2_PC|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Clear <= Clear;
ww_Input <= Input;
ww_IRload <= IRload;
ww_PCload <= PCload;
ww_INmux <= INmux;
ww_Aload <= Aload;
ww_JNZmux <= JNZmux;
IR <= ww_IR;
Xneq0 <= ww_Xneq0;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U2_PC|Q\(3) & \U2_PC|Q\(2) & \U2_PC|Q\(1) & \U2_PC|Q\(0));

\U0_IR|Q\(0) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U0_IR|Q\(1) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U0_IR|Q\(2) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U0_IR|Q\(3) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U0_IR|Q\(5) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U0_IR|Q\(6) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U0_IR|Q\(7) <= \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\Clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clear~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Clear~inputclkctrl_outclk\ <= NOT \Clear~inputclkctrl_outclk\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;

-- Location: IOOBUF_X12_Y31_N2
\IR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_IR|Q\(5),
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\IR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_IR|Q\(6),
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\IR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_IR|Q\(7),
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Xneq0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~2_combout\,
	devoe => ww_devoe,
	o => \Xneq0~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\Output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(0),
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\Output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(1),
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(2),
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(3),
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(4),
	devoe => ww_devoe,
	o => \Output[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(5),
	devoe => ww_devoe,
	o => \Output[5]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(6),
	devoe => ww_devoe,
	o => \Output[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6_A|Q\(7),
	devoe => ww_devoe,
	o => \Output[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X12_Y31_N8
\IRload~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRload,
	o => \IRload~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\Clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: CLKCTRL_G19
\Clear~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clear~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y31_N1
\JNZmux~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JNZmux,
	o => \JNZmux~input_o\);

-- Location: LCCOMB_X6_Y27_N22
\U3_inc|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3_inc|Add0~0_combout\ = \U2_PC|Q\(3) $ (((\U2_PC|Q\(1) & (\U2_PC|Q\(2) & \U2_PC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_PC|Q\(1),
	datab => \U2_PC|Q\(2),
	datac => \U2_PC|Q\(3),
	datad => \U2_PC|Q\(0),
	combout => \U3_inc|Add0~0_combout\);

-- Location: M9K_X7_Y27_N0
\U4_ROM|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000007F001840050001000030",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:U4_ROM|altrom:srom|altsyncram:rom_block|altsyncram_8e01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	ena0 => \IRload~input_o\,
	clr0 => \Clear~inputclkctrl_outclk\,
	portaaddr => \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X6_Y27_N26
\U1_JNZmux|Y[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1_JNZmux|Y[3]~4_combout\ = (\JNZmux~input_o\ & ((\U0_IR|Q\(3)))) # (!\JNZmux~input_o\ & (\U3_inc|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JNZmux~input_o\,
	datac => \U3_inc|Add0~0_combout\,
	datad => \U0_IR|Q\(3),
	combout => \U1_JNZmux|Y[3]~4_combout\);

-- Location: IOIBUF_X16_Y31_N8
\PCload~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCload,
	o => \PCload~input_o\);

-- Location: FF_X6_Y27_N27
\U2_PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1_JNZmux|Y[3]~4_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	ena => \PCload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_PC|Q\(3));

-- Location: LCCOMB_X6_Y27_N16
\U1_JNZmux|Y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1_JNZmux|Y[2]~2_combout\ = (!\JNZmux~input_o\ & (\U2_PC|Q\(2) $ (((\U2_PC|Q\(1) & \U2_PC|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_PC|Q\(1),
	datab => \U2_PC|Q\(2),
	datac => \U2_PC|Q\(0),
	datad => \JNZmux~input_o\,
	combout => \U1_JNZmux|Y[2]~2_combout\);

-- Location: LCCOMB_X6_Y27_N24
\U1_JNZmux|Y[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1_JNZmux|Y[2]~3_combout\ = (\U1_JNZmux|Y[2]~2_combout\) # ((\JNZmux~input_o\ & \U0_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JNZmux~input_o\,
	datac => \U0_IR|Q\(2),
	datad => \U1_JNZmux|Y[2]~2_combout\,
	combout => \U1_JNZmux|Y[2]~3_combout\);

-- Location: FF_X6_Y27_N25
\U2_PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1_JNZmux|Y[2]~3_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	ena => \PCload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_PC|Q\(2));

-- Location: LCCOMB_X6_Y27_N10
\U1_JNZmux|Y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1_JNZmux|Y[1]~1_combout\ = (\JNZmux~input_o\ & (((\U0_IR|Q\(1))))) # (!\JNZmux~input_o\ & (\U2_PC|Q\(0) $ ((\U2_PC|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_PC|Q\(0),
	datab => \JNZmux~input_o\,
	datac => \U2_PC|Q\(1),
	datad => \U0_IR|Q\(1),
	combout => \U1_JNZmux|Y[1]~1_combout\);

-- Location: FF_X6_Y27_N11
\U2_PC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1_JNZmux|Y[1]~1_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	ena => \PCload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_PC|Q\(1));

-- Location: LCCOMB_X6_Y27_N0
\U1_JNZmux|Y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1_JNZmux|Y[0]~0_combout\ = (\JNZmux~input_o\ & ((\U0_IR|Q\(0)))) # (!\JNZmux~input_o\ & (!\U2_PC|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JNZmux~input_o\,
	datac => \U2_PC|Q\(0),
	datad => \U0_IR|Q\(0),
	combout => \U1_JNZmux|Y[0]~0_combout\);

-- Location: FF_X6_Y27_N1
\U2_PC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1_JNZmux|Y[0]~0_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	ena => \PCload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_PC|Q\(0));

-- Location: LCCOMB_X22_Y1_N12
\U6_A|Q[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[0]~8_combout\ = \U6_A|Q\(0) $ (VCC)
-- \U6_A|Q[0]~9\ = CARRY(\U6_A|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6_A|Q\(0),
	datad => VCC,
	combout => \U6_A|Q[0]~8_combout\,
	cout => \U6_A|Q[0]~9\);

-- Location: IOIBUF_X26_Y0_N1
\Input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\INmux~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INmux,
	o => \INmux~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\Aload~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aload,
	o => \Aload~input_o\);

-- Location: FF_X22_Y1_N13
\U6_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[0]~8_combout\,
	asdata => \Input[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(0));

-- Location: LCCOMB_X22_Y1_N14
\U6_A|Q[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[1]~10_combout\ = (\U6_A|Q\(1) & (\U6_A|Q[0]~9\ & VCC)) # (!\U6_A|Q\(1) & (!\U6_A|Q[0]~9\))
-- \U6_A|Q[1]~11\ = CARRY((!\U6_A|Q\(1) & !\U6_A|Q[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6_A|Q\(1),
	datad => VCC,
	cin => \U6_A|Q[0]~9\,
	combout => \U6_A|Q[1]~10_combout\,
	cout => \U6_A|Q[1]~11\);

-- Location: IOIBUF_X29_Y0_N8
\Input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: FF_X22_Y1_N15
\U6_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[1]~10_combout\,
	asdata => \Input[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(1));

-- Location: LCCOMB_X22_Y1_N16
\U6_A|Q[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[2]~12_combout\ = (\U6_A|Q\(2) & ((GND) # (!\U6_A|Q[1]~11\))) # (!\U6_A|Q\(2) & (\U6_A|Q[1]~11\ $ (GND)))
-- \U6_A|Q[2]~13\ = CARRY((\U6_A|Q\(2)) # (!\U6_A|Q[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6_A|Q\(2),
	datad => VCC,
	cin => \U6_A|Q[1]~11\,
	combout => \U6_A|Q[2]~12_combout\,
	cout => \U6_A|Q[2]~13\);

-- Location: IOIBUF_X31_Y0_N8
\Input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: FF_X22_Y1_N17
\U6_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[2]~12_combout\,
	asdata => \Input[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(2));

-- Location: LCCOMB_X22_Y1_N18
\U6_A|Q[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[3]~14_combout\ = (\U6_A|Q\(3) & (\U6_A|Q[2]~13\ & VCC)) # (!\U6_A|Q\(3) & (!\U6_A|Q[2]~13\))
-- \U6_A|Q[3]~15\ = CARRY((!\U6_A|Q\(3) & !\U6_A|Q[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6_A|Q\(3),
	datad => VCC,
	cin => \U6_A|Q[2]~13\,
	combout => \U6_A|Q[3]~14_combout\,
	cout => \U6_A|Q[3]~15\);

-- Location: IOIBUF_X14_Y0_N1
\Input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X22_Y1_N19
\U6_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[3]~14_combout\,
	asdata => \Input[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(3));

-- Location: LCCOMB_X22_Y1_N28
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\U6_A|Q\(2) & (!\U6_A|Q\(0) & (!\U6_A|Q\(1) & !\U6_A|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6_A|Q\(2),
	datab => \U6_A|Q\(0),
	datac => \U6_A|Q\(1),
	datad => \U6_A|Q\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y1_N20
\U6_A|Q[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[4]~16_combout\ = (\U6_A|Q\(4) & ((GND) # (!\U6_A|Q[3]~15\))) # (!\U6_A|Q\(4) & (\U6_A|Q[3]~15\ $ (GND)))
-- \U6_A|Q[4]~17\ = CARRY((\U6_A|Q\(4)) # (!\U6_A|Q[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6_A|Q\(4),
	datad => VCC,
	cin => \U6_A|Q[3]~15\,
	combout => \U6_A|Q[4]~16_combout\,
	cout => \U6_A|Q[4]~17\);

-- Location: IOIBUF_X22_Y0_N8
\Input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(4),
	o => \Input[4]~input_o\);

-- Location: FF_X22_Y1_N21
\U6_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[4]~16_combout\,
	asdata => \Input[4]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(4));

-- Location: LCCOMB_X22_Y1_N22
\U6_A|Q[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[5]~18_combout\ = (\U6_A|Q\(5) & (\U6_A|Q[4]~17\ & VCC)) # (!\U6_A|Q\(5) & (!\U6_A|Q[4]~17\))
-- \U6_A|Q[5]~19\ = CARRY((!\U6_A|Q\(5) & !\U6_A|Q[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6_A|Q\(5),
	datad => VCC,
	cin => \U6_A|Q[4]~17\,
	combout => \U6_A|Q[5]~18_combout\,
	cout => \U6_A|Q[5]~19\);

-- Location: IOIBUF_X31_Y0_N1
\Input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(5),
	o => \Input[5]~input_o\);

-- Location: FF_X22_Y1_N23
\U6_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[5]~18_combout\,
	asdata => \Input[5]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(5));

-- Location: LCCOMB_X22_Y1_N24
\U6_A|Q[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[6]~20_combout\ = (\U6_A|Q\(6) & ((GND) # (!\U6_A|Q[5]~19\))) # (!\U6_A|Q\(6) & (\U6_A|Q[5]~19\ $ (GND)))
-- \U6_A|Q[6]~21\ = CARRY((\U6_A|Q\(6)) # (!\U6_A|Q[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6_A|Q\(6),
	datad => VCC,
	cin => \U6_A|Q[5]~19\,
	combout => \U6_A|Q[6]~20_combout\,
	cout => \U6_A|Q[6]~21\);

-- Location: IOIBUF_X29_Y0_N1
\Input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(6),
	o => \Input[6]~input_o\);

-- Location: FF_X22_Y1_N25
\U6_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[6]~20_combout\,
	asdata => \Input[6]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(6));

-- Location: LCCOMB_X22_Y1_N26
\U6_A|Q[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U6_A|Q[7]~22_combout\ = \U6_A|Q\(7) $ (!\U6_A|Q[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6_A|Q\(7),
	cin => \U6_A|Q[6]~21\,
	combout => \U6_A|Q[7]~22_combout\);

-- Location: IOIBUF_X22_Y0_N1
\Input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(7),
	o => \Input[7]~input_o\);

-- Location: FF_X22_Y1_N27
\U6_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6_A|Q[7]~22_combout\,
	asdata => \Input[7]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \INmux~input_o\,
	ena => \Aload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6_A|Q\(7));

-- Location: LCCOMB_X22_Y1_N2
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\U6_A|Q\(5) & (!\U6_A|Q\(4) & (!\U6_A|Q\(7) & !\U6_A|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6_A|Q\(5),
	datab => \U6_A|Q\(4),
	datac => \U6_A|Q\(7),
	datad => \U6_A|Q\(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y1_N0
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

ww_IR(5) <= \IR[5]~output_o\;

ww_IR(6) <= \IR[6]~output_o\;

ww_IR(7) <= \IR[7]~output_o\;

ww_Xneq0 <= \Xneq0~output_o\;

ww_Output(0) <= \Output[0]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(4) <= \Output[4]~output_o\;

ww_Output(5) <= \Output[5]~output_o\;

ww_Output(6) <= \Output[6]~output_o\;

ww_Output(7) <= \Output[7]~output_o\;
END structure;


