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

-- DATE "04/06/2021 16:42:59"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_04 IS
    PORT (
	clk : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	F : OUT std_logic
	);
END Lab_04;

-- Design Ports Information
-- F	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_04 IS
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
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL \rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \F~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \rom|altsyncram_component|auto_generated|q_a\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_A <= A;
ww_B <= B;
ww_C <= C;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\A~input_o\ & \B~input_o\ & \C~input_o\);

\rom|altsyncram_component|auto_generated|q_a\(0) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

-- Location: IOOBUF_X0_Y18_N23
\F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X13_Y24_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: M9K_X15_Y21_N0
\rom|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000040001000000001000000001000040000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom_3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom3_ex:rom|altsyncram:altsyncram_component|altsyncram_pkr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~input_o\,
	portaaddr => \rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_F <= \F~output_o\;
END structure;


