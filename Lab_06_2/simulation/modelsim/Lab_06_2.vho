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

-- DATE "04/15/2021 16:02:05"

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

ENTITY 	Lab_06_2 IS
    PORT (
	clock1 : IN std_logic;
	clock2 : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	write_address : IN std_logic_vector(7 DOWNTO 0);
	read_address : IN std_logic_vector(7 DOWNTO 0);
	wr : IN std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Lab_06_2;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock2	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock1	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_address[7]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[6]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_address[7]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_06_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock1 : std_logic;
SIGNAL ww_clock2 : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_write_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_read_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wr : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clock1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \clock1~input_o\ : std_logic;
SIGNAL \clock1~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock2~input_o\ : std_logic;
SIGNAL \clock2~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \write_address[0]~input_o\ : std_logic;
SIGNAL \write_address[1]~input_o\ : std_logic;
SIGNAL \write_address[2]~input_o\ : std_logic;
SIGNAL \write_address[3]~input_o\ : std_logic;
SIGNAL \write_address[4]~input_o\ : std_logic;
SIGNAL \write_address[5]~input_o\ : std_logic;
SIGNAL \write_address[6]~input_o\ : std_logic;
SIGNAL \write_address[7]~input_o\ : std_logic;
SIGNAL \read_address[0]~input_o\ : std_logic;
SIGNAL \read_address[1]~input_o\ : std_logic;
SIGNAL \read_address[2]~input_o\ : std_logic;
SIGNAL \read_address[3]~input_o\ : std_logic;
SIGNAL \read_address[4]~input_o\ : std_logic;
SIGNAL \read_address[5]~input_o\ : std_logic;
SIGNAL \read_address[6]~input_o\ : std_logic;
SIGNAL \read_address[7]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_out[0]~reg0\ : std_logic;
SIGNAL \data_out[1]~reg0\ : std_logic;
SIGNAL \data_out[2]~reg0\ : std_logic;
SIGNAL \data_out[3]~reg0\ : std_logic;
SIGNAL \data_out[4]~reg0\ : std_logic;
SIGNAL \data_out[5]~reg0\ : std_logic;
SIGNAL \data_out[6]~reg0\ : std_logic;
SIGNAL \data_out[7]~reg0\ : std_logic;

BEGIN

ww_clock1 <= clock1;
ww_clock2 <= clock2;
ww_data_in <= data_in;
ww_write_address <= write_address;
ww_read_address <= read_address;
ww_wr <= wr;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_in[7]~input_o\
& \data_in[6]~input_o\ & \data_in[5]~input_o\ & \data_in[4]~input_o\ & \data_in[3]~input_o\ & \data_in[2]~input_o\ & \data_in[1]~input_o\ & \data_in[0]~input_o\);

\ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\write_address[7]~input_o\ & \write_address[6]~input_o\ & \write_address[5]~input_o\ & \write_address[4]~input_o\ & \write_address[3]~input_o\ & \write_address[2]~input_o\ & 
\write_address[1]~input_o\ & \write_address[0]~input_o\);

\ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\read_address[7]~input_o\ & \read_address[6]~input_o\ & \read_address[5]~input_o\ & \read_address[4]~input_o\ & \read_address[3]~input_o\ & \read_address[2]~input_o\ & 
\read_address[1]~input_o\ & \read_address[0]~input_o\);

\data_out[0]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\data_out[1]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\data_out[2]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\data_out[3]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\data_out[4]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\data_out[5]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\data_out[6]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\data_out[7]~reg0\ <= \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clock1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock1~input_o\);

\clock2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock2~input_o\);

-- Location: IOOBUF_X33_Y22_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X31_Y0_N8
\wr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\clock1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock1,
	o => \clock1~input_o\);

-- Location: CLKCTRL_G19
\clock1~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock1~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N15
\clock2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock2,
	o => \clock2~input_o\);

-- Location: CLKCTRL_G17
\clock2~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock2~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N22
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\write_address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(0),
	o => \write_address[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\write_address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(1),
	o => \write_address[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\write_address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(2),
	o => \write_address[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\write_address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(3),
	o => \write_address[3]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\write_address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(4),
	o => \write_address[4]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\write_address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(5),
	o => \write_address[5]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\write_address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(6),
	o => \write_address[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\write_address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_address(7),
	o => \write_address[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\read_address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(0),
	o => \read_address[0]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\read_address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(1),
	o => \read_address[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\read_address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(2),
	o => \read_address[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\read_address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(3),
	o => \read_address[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\read_address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(4),
	o => \read_address[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\read_address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(5),
	o => \read_address[5]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\read_address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(6),
	o => \read_address[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\read_address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_address(7),
	o => \read_address[7]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: M9K_X28_Y6_N0
\ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_block_rtl_0|altsyncram_a4d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr~input_o\,
	portbre => VCC,
	clk0 => \clock1~inputclkctrl_outclk\,
	clk1 => \clock2~inputclkctrl_outclk\,
	ena0 => \wr~input_o\,
	portadatain => \ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


