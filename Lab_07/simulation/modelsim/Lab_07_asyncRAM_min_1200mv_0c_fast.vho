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

-- DATE "04/28/2021 16:11:28"

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

ENTITY 	Lab_07_asyncRAM IS
    PORT (
	data_in : IN std_logic_vector(3 DOWNTO 0);
	address : IN std_logic_vector(2 DOWNTO 0);
	wr : IN std_logic;
	data_out : BUFFER std_logic_vector(3 DOWNTO 0);
	m1_out : BUFFER std_logic_vector(3 DOWNTO 0);
	m2_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Lab_07_asyncRAM;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_07_asyncRAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wr : std_logic;
SIGNAL ww_data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m1_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m2_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \m1_out[0]~output_o\ : std_logic;
SIGNAL \m1_out[1]~output_o\ : std_logic;
SIGNAL \m1_out[2]~output_o\ : std_logic;
SIGNAL \m1_out[3]~output_o\ : std_logic;
SIGNAL \m2_out[0]~output_o\ : std_logic;
SIGNAL \m2_out[1]~output_o\ : std_logic;
SIGNAL \m2_out[2]~output_o\ : std_logic;
SIGNAL \m2_out[3]~output_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[5][0]~combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~5clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[7][0]~combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[6][0]~combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~4clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[4][0]~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~7clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[3][0]~combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~6clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[0][0]~combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[1][0]~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[2][0]~combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \ram_block[3][1]~combout\ : std_logic;
SIGNAL \ram_block[2][1]~combout\ : std_logic;
SIGNAL \ram_block[0][1]~combout\ : std_logic;
SIGNAL \ram_block[1][1]~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \ram_block[5][1]~combout\ : std_logic;
SIGNAL \ram_block[7][1]~combout\ : std_logic;
SIGNAL \ram_block[6][1]~combout\ : std_logic;
SIGNAL \ram_block[4][1]~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \ram_block[3][2]~combout\ : std_logic;
SIGNAL \ram_block[2][2]~combout\ : std_logic;
SIGNAL \ram_block[0][2]~combout\ : std_logic;
SIGNAL \ram_block[1][2]~combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \ram_block[5][2]~combout\ : std_logic;
SIGNAL \ram_block[4][2]~combout\ : std_logic;
SIGNAL \ram_block[6][2]~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ram_block[7][2]~combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \ram_block[0][3]~combout\ : std_logic;
SIGNAL \ram_block[1][3]~combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ram_block[2][3]~combout\ : std_logic;
SIGNAL \ram_block[3][3]~combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \ram_block[5][3]~combout\ : std_logic;
SIGNAL \ram_block[7][3]~combout\ : std_logic;
SIGNAL \ram_block[6][3]~combout\ : std_logic;
SIGNAL \ram_block[4][3]~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_wr~input_o\ : std_logic;

BEGIN

ww_data_in <= data_in;
ww_address <= address;
ww_wr <= wr;
data_out <= ww_data_out;
m1_out <= ww_m1_out;
m2_out <= ww_m2_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Decoder0~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~5_combout\);

\Decoder0~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~7_combout\);

\Decoder0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~6_combout\);

\Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~0_combout\);

\Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~2_combout\);

\Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~1_combout\);

\Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~3_combout\);

\Decoder0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~4_combout\);
\ALT_INV_wr~input_o\ <= NOT \wr~input_o\;

-- Location: IOOBUF_X20_Y31_N9
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\m1_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[2][0]~combout\,
	devoe => ww_devoe,
	o => \m1_out[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\m1_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[2][1]~combout\,
	devoe => ww_devoe,
	o => \m1_out[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\m1_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[2][2]~combout\,
	devoe => ww_devoe,
	o => \m1_out[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\m1_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[2][3]~combout\,
	devoe => ww_devoe,
	o => \m1_out[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\m2_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[1][0]~combout\,
	devoe => ww_devoe,
	o => \m2_out[0]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\m2_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[1][1]~combout\,
	devoe => ww_devoe,
	o => \m2_out[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\m2_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[1][2]~combout\,
	devoe => ww_devoe,
	o => \m2_out[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\m2_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_block[1][3]~combout\,
	devoe => ww_devoe,
	o => \m2_out[3]~output_o\);

-- Location: IOIBUF_X12_Y31_N8
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\wr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X20_Y29_N26
\Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: CLKCTRL_G8
\Decoder0~2clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X20_Y29_N8
\ram_block[5][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[5][0]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \ram_block[5][0]~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \ram_block[5][0]~combout\);

-- Location: LCCOMB_X20_Y29_N16
\Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: CLKCTRL_G10
\Decoder0~5clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~5clkctrl_outclk\);

-- Location: LCCOMB_X19_Y29_N26
\ram_block[7][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[7][0]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \ram_block[7][0]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[7][0]~combout\);

-- Location: LCCOMB_X20_Y29_N12
\Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: CLKCTRL_G13
\Decoder0~3clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X19_Y29_N16
\ram_block[6][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[6][0]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => \ram_block[6][0]~combout\,
	combout => \ram_block[6][0]~combout\);

-- Location: LCCOMB_X20_Y29_N28
\Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: CLKCTRL_G14
\Decoder0~4clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~4clkctrl_outclk\);

-- Location: LCCOMB_X20_Y29_N30
\ram_block[4][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[4][0]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \ram_block[4][0]~combout\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => \ram_block[4][0]~combout\);

-- Location: LCCOMB_X20_Y29_N14
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram_block[6][0]~combout\)) # (!\address[1]~input_o\ & ((\ram_block[4][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram_block[6][0]~combout\,
	datac => \ram_block[4][0]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X20_Y29_N20
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\ram_block[7][0]~combout\) # (!\address[0]~input_o\)))) # (!\Mux3~0_combout\ & (\ram_block[5][0]~combout\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[5][0]~combout\,
	datab => \ram_block[7][0]~combout\,
	datac => \Mux3~0_combout\,
	datad => \address[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X20_Y29_N6
\Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: CLKCTRL_G6
\Decoder0~7clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~7clkctrl_outclk\);

-- Location: LCCOMB_X20_Y29_N0
\ram_block[3][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[3][0]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \Decoder0~7clkctrl_outclk\,
	datad => \ram_block[3][0]~combout\,
	combout => \ram_block[3][0]~combout\);

-- Location: LCCOMB_X20_Y29_N18
\Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: CLKCTRL_G9
\Decoder0~6clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~6clkctrl_outclk\);

-- Location: LCCOMB_X19_Y29_N20
\ram_block[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[0][0]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datab => \ram_block[0][0]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][0]~combout\);

-- Location: LCCOMB_X20_Y29_N4
\Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: CLKCTRL_G11
\Decoder0~1clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X20_Y30_N18
\ram_block[1][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[1][0]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[0]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[1][0]~combout\,
	combout => \ram_block[1][0]~combout\);

-- Location: LCCOMB_X20_Y29_N24
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\address[0]~input_o\ & (((\ram_block[1][0]~combout\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\ram_block[0][0]~combout\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram_block[0][0]~combout\,
	datac => \ram_block[1][0]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X20_Y29_N10
\Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: CLKCTRL_G12
\Decoder0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y30_N16
\ram_block[2][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[2][0]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data_in[0]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (\ram_block[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_block[2][0]~combout\,
	datac => \data_in[0]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \ram_block[2][0]~combout\);

-- Location: LCCOMB_X20_Y29_N2
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\ram_block[3][0]~combout\) # ((!\address[1]~input_o\)))) # (!\Mux3~2_combout\ & (((\ram_block[2][0]~combout\ & \address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[3][0]~combout\,
	datab => \Mux3~2_combout\,
	datac => \ram_block[2][0]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X20_Y29_N22
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\address[2]~input_o\ & (\Mux3~1_combout\)) # (!\address[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~1_combout\,
	datac => \address[2]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X26_Y31_N1
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X26_Y28_N30
\ram_block[3][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[3][1]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \ram_block[3][1]~combout\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => \ram_block[3][1]~combout\);

-- Location: LCCOMB_X26_Y28_N0
\ram_block[2][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[2][1]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \Decoder0~0clkctrl_outclk\,
	datad => \ram_block[2][1]~combout\,
	combout => \ram_block[2][1]~combout\);

-- Location: LCCOMB_X26_Y28_N28
\ram_block[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[0][1]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \ram_block[0][1]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][1]~combout\);

-- Location: LCCOMB_X27_Y30_N16
\ram_block[1][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[1][1]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[1][1]~combout\,
	combout => \ram_block[1][1]~combout\);

-- Location: LCCOMB_X26_Y28_N8
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\address[0]~input_o\ & (((\ram_block[1][1]~combout\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\ram_block[0][1]~combout\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram_block[0][1]~combout\,
	datac => \ram_block[1][1]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X26_Y28_N18
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\ram_block[3][1]~combout\) # ((!\address[1]~input_o\)))) # (!\Mux2~2_combout\ & (((\ram_block[2][1]~combout\ & \address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[3][1]~combout\,
	datab => \ram_block[2][1]~combout\,
	datac => \Mux2~2_combout\,
	datad => \address[1]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X27_Y29_N12
\ram_block[5][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[5][1]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[5][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \Decoder0~2clkctrl_outclk\,
	datad => \ram_block[5][1]~combout\,
	combout => \ram_block[5][1]~combout\);

-- Location: LCCOMB_X27_Y29_N8
\ram_block[7][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[7][1]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[7][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \ram_block[7][1]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[7][1]~combout\);

-- Location: LCCOMB_X27_Y29_N6
\ram_block[6][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[6][1]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[6][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => \ram_block[6][1]~combout\,
	combout => \ram_block[6][1]~combout\);

-- Location: LCCOMB_X27_Y30_N18
\ram_block[4][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[4][1]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[4][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => \ram_block[4][1]~combout\,
	combout => \ram_block[4][1]~combout\);

-- Location: LCCOMB_X27_Y29_N24
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram_block[6][1]~combout\)) # (!\address[1]~input_o\ & ((\ram_block[4][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[6][1]~combout\,
	datab => \address[0]~input_o\,
	datac => \ram_block[4][1]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y29_N26
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\address[0]~input_o\ & ((\Mux2~0_combout\ & ((\ram_block[7][1]~combout\))) # (!\Mux2~0_combout\ & (\ram_block[5][1]~combout\)))) # (!\address[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[5][1]~combout\,
	datab => \ram_block[7][1]~combout\,
	datac => \address[0]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X26_Y28_N20
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\address[2]~input_o\ & ((\Mux2~1_combout\))) # (!\address[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \address[2]~input_o\,
	datac => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X29_Y31_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X26_Y28_N26
\ram_block[3][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[3][2]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \ram_block[3][2]~combout\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => \ram_block[3][2]~combout\);

-- Location: LCCOMB_X26_Y28_N2
\ram_block[2][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[2][2]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \Decoder0~0clkctrl_outclk\,
	datad => \ram_block[2][2]~combout\,
	combout => \ram_block[2][2]~combout\);

-- Location: LCCOMB_X26_Y28_N24
\ram_block[0][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[0][2]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \ram_block[0][2]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][2]~combout\);

-- Location: LCCOMB_X26_Y30_N24
\ram_block[1][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[1][2]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[1][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[1][2]~combout\,
	combout => \ram_block[1][2]~combout\);

-- Location: LCCOMB_X26_Y28_N10
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\address[0]~input_o\ & (((\ram_block[1][2]~combout\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\ram_block[0][2]~combout\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram_block[0][2]~combout\,
	datac => \ram_block[1][2]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X26_Y28_N12
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\ram_block[3][2]~combout\) # ((!\address[1]~input_o\)))) # (!\Mux1~2_combout\ & (((\ram_block[2][2]~combout\ & \address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[3][2]~combout\,
	datab => \ram_block[2][2]~combout\,
	datac => \Mux1~2_combout\,
	datad => \address[1]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X26_Y29_N16
\ram_block[5][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[5][2]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[5][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \Decoder0~2clkctrl_outclk\,
	datad => \ram_block[5][2]~combout\,
	combout => \ram_block[5][2]~combout\);

-- Location: LCCOMB_X26_Y29_N10
\ram_block[4][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[4][2]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[4][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => \ram_block[4][2]~combout\,
	combout => \ram_block[4][2]~combout\);

-- Location: LCCOMB_X26_Y30_N26
\ram_block[6][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[6][2]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[6][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \ram_block[6][2]~combout\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \ram_block[6][2]~combout\);

-- Location: LCCOMB_X26_Y28_N14
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram_block[6][2]~combout\))) # (!\address[1]~input_o\ & (\ram_block[4][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram_block[4][2]~combout\,
	datac => \ram_block[6][2]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y29_N12
\ram_block[7][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[7][2]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[7][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \ram_block[7][2]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[7][2]~combout\);

-- Location: LCCOMB_X26_Y28_N16
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\address[0]~input_o\ & ((\Mux1~0_combout\ & ((\ram_block[7][2]~combout\))) # (!\Mux1~0_combout\ & (\ram_block[5][2]~combout\)))) # (!\address[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram_block[5][2]~combout\,
	datac => \Mux1~0_combout\,
	datad => \ram_block[7][2]~combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X26_Y28_N6
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\address[2]~input_o\ & ((\Mux1~1_combout\))) # (!\address[2]~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \address[2]~input_o\,
	datac => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X22_Y31_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X21_Y29_N22
\ram_block[0][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[0][3]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \ram_block[0][3]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][3]~combout\);

-- Location: LCCOMB_X22_Y30_N18
\ram_block[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[1][3]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[1][3]~combout\,
	combout => \ram_block[1][3]~combout\);

-- Location: LCCOMB_X21_Y29_N12
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\address[0]~input_o\ & (((\ram_block[1][3]~combout\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\ram_block[0][3]~combout\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[0][3]~combout\,
	datab => \ram_block[1][3]~combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X22_Y30_N8
\ram_block[2][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[2][3]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \ram_block[2][3]~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \ram_block[2][3]~combout\);

-- Location: LCCOMB_X22_Y29_N20
\ram_block[3][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[3][3]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datac => \Decoder0~7clkctrl_outclk\,
	datad => \ram_block[3][3]~combout\,
	combout => \ram_block[3][3]~combout\);

-- Location: LCCOMB_X21_Y29_N6
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\ram_block[3][3]~combout\) # (!\address[1]~input_o\)))) # (!\Mux0~2_combout\ & (\ram_block[2][3]~combout\ & ((\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \ram_block[2][3]~combout\,
	datac => \ram_block[3][3]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X22_Y29_N24
\ram_block[5][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[5][3]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[5][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \ram_block[5][3]~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \ram_block[5][3]~combout\);

-- Location: LCCOMB_X21_Y29_N28
\ram_block[7][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[7][3]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\data_in[3]~input_o\))) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & (\ram_block[7][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_block[7][3]~combout\,
	datac => \data_in[3]~input_o\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[7][3]~combout\);

-- Location: LCCOMB_X22_Y29_N18
\ram_block[6][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[6][3]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[6][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => \ram_block[6][3]~combout\,
	combout => \ram_block[6][3]~combout\);

-- Location: LCCOMB_X21_Y29_N10
\ram_block[4][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_block[4][3]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[4][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \Decoder0~4clkctrl_outclk\,
	datad => \ram_block[4][3]~combout\,
	combout => \ram_block[4][3]~combout\);

-- Location: LCCOMB_X21_Y29_N0
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram_block[6][3]~combout\)) # (!\address[1]~input_o\ & ((\ram_block[4][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[6][3]~combout\,
	datab => \ram_block[4][3]~combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y29_N2
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\address[0]~input_o\ & ((\Mux0~0_combout\ & ((\ram_block[7][3]~combout\))) # (!\Mux0~0_combout\ & (\ram_block[5][3]~combout\)))) # (!\address[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[5][3]~combout\,
	datab => \ram_block[7][3]~combout\,
	datac => \address[0]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y29_N16
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\address[2]~input_o\ & ((\Mux0~1_combout\))) # (!\address[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~1_combout\,
	datad => \address[2]~input_o\,
	combout => \Mux0~4_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_m1_out(0) <= \m1_out[0]~output_o\;

ww_m1_out(1) <= \m1_out[1]~output_o\;

ww_m1_out(2) <= \m1_out[2]~output_o\;

ww_m1_out(3) <= \m1_out[3]~output_o\;

ww_m2_out(0) <= \m2_out[0]~output_o\;

ww_m2_out(1) <= \m2_out[1]~output_o\;

ww_m2_out(2) <= \m2_out[2]~output_o\;

ww_m2_out(3) <= \m2_out[3]~output_o\;
END structure;


