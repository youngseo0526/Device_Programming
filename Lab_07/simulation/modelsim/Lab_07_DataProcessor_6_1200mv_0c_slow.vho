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

-- DATE "04/30/2021 17:02:55"

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

ENTITY 	Lab_07_DataProcessor IS
    PORT (
	clk : IN std_logic;
	input_sel : IN std_logic;
	ac_load : IN std_logic;
	mar_load : IN std_logic;
	alu_sel : IN std_logic_vector(2 DOWNTO 0);
	ram_load : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	mar_in : IN std_logic_vector(2 DOWNTO 0);
	mux_out : OUT std_logic_vector(3 DOWNTO 0);
	mar_out : OUT std_logic_vector(2 DOWNTO 0);
	data_chk : OUT std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(3 DOWNTO 0);
	m1_out : OUT std_logic_vector(3 DOWNTO 0);
	m2_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab_07_DataProcessor;

-- Design Ports Information
-- mux_out[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_out[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_out[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_out[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_out[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_out[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_out[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sel	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_in[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_load	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_load	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_in[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_in[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ac_load	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_07_DataProcessor IS
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
SIGNAL ww_input_sel : std_logic;
SIGNAL ww_ac_load : std_logic;
SIGNAL ww_mar_load : std_logic;
SIGNAL ww_alu_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ram_load : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mar_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_mux_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mar_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_chk : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m1_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m2_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux_out[0]~output_o\ : std_logic;
SIGNAL \mux_out[1]~output_o\ : std_logic;
SIGNAL \mux_out[2]~output_o\ : std_logic;
SIGNAL \mux_out[3]~output_o\ : std_logic;
SIGNAL \mar_out[0]~output_o\ : std_logic;
SIGNAL \mar_out[1]~output_o\ : std_logic;
SIGNAL \mar_out[2]~output_o\ : std_logic;
SIGNAL \data_chk[0]~output_o\ : std_logic;
SIGNAL \data_chk[1]~output_o\ : std_logic;
SIGNAL \data_chk[2]~output_o\ : std_logic;
SIGNAL \data_chk[3]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \m1_out[0]~output_o\ : std_logic;
SIGNAL \m1_out[1]~output_o\ : std_logic;
SIGNAL \m1_out[2]~output_o\ : std_logic;
SIGNAL \m1_out[3]~output_o\ : std_logic;
SIGNAL \m2_out[0]~output_o\ : std_logic;
SIGNAL \m2_out[1]~output_o\ : std_logic;
SIGNAL \m2_out[2]~output_o\ : std_logic;
SIGNAL \m2_out[3]~output_o\ : std_logic;
SIGNAL \input_sel~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \alu_sel[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \mar_in[2]~input_o\ : std_logic;
SIGNAL \mar_load~input_o\ : std_logic;
SIGNAL \mar_in[0]~input_o\ : std_logic;
SIGNAL \mar_in[1]~input_o\ : std_logic;
SIGNAL \ram_load~input_o\ : std_logic;
SIGNAL \RAM|Decoder0~1_combout\ : std_logic;
SIGNAL \RAM|Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[1][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~0_combout\ : std_logic;
SIGNAL \RAM|Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[3][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~3_combout\ : std_logic;
SIGNAL \RAM|Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[0][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~2_combout\ : std_logic;
SIGNAL \RAM|Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[2][0]~combout\ : std_logic;
SIGNAL \RAM|Mux3~0_combout\ : std_logic;
SIGNAL \RAM|Mux3~1_combout\ : std_logic;
SIGNAL \RAM|Decoder0~7_combout\ : std_logic;
SIGNAL \RAM|Decoder0~7clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[7][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~4_combout\ : std_logic;
SIGNAL \RAM|Decoder0~4clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[5][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~6_combout\ : std_logic;
SIGNAL \RAM|Decoder0~6clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[4][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~5_combout\ : std_logic;
SIGNAL \RAM|Decoder0~5clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[6][0]~combout\ : std_logic;
SIGNAL \RAM|Mux3~2_combout\ : std_logic;
SIGNAL \RAM|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ac_load~input_o\ : std_logic;
SIGNAL \ALU|Add0~2_cout\ : std_logic;
SIGNAL \ALU|Add0~3_combout\ : std_logic;
SIGNAL \alu_sel[1]~input_o\ : std_logic;
SIGNAL \alu_sel[2]~input_o\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \RAM|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|Mux3~4_combout\ : std_logic;
SIGNAL \mux~0_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \RAM|ram_block[7][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[5][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[4][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[6][1]~combout\ : std_logic;
SIGNAL \RAM|Mux2~0_combout\ : std_logic;
SIGNAL \RAM|Mux2~1_combout\ : std_logic;
SIGNAL \RAM|ram_block[3][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[2][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[0][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[1][1]~combout\ : std_logic;
SIGNAL \RAM|Mux2~2_combout\ : std_logic;
SIGNAL \RAM|Mux2~3_combout\ : std_logic;
SIGNAL \RAM|Mux2~4_combout\ : std_logic;
SIGNAL \ALU|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|Add0~5_combout\ : std_logic;
SIGNAL \ALU|Add0~4\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Mux2~2_combout\ : std_logic;
SIGNAL \mux~1_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \RAM|ram_block[2][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[3][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[1][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[0][2]~combout\ : std_logic;
SIGNAL \RAM|Mux1~0_combout\ : std_logic;
SIGNAL \RAM|Mux1~1_combout\ : std_logic;
SIGNAL \RAM|ram_block[7][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[5][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[4][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[6][2]~combout\ : std_logic;
SIGNAL \RAM|Mux1~2_combout\ : std_logic;
SIGNAL \RAM|Mux1~3_combout\ : std_logic;
SIGNAL \RAM|Mux1~4_combout\ : std_logic;
SIGNAL \ALU|Mux1~1_combout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9_combout\ : std_logic;
SIGNAL \ALU|Mux1~2_combout\ : std_logic;
SIGNAL \mux~2_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \RAM|ram_block[4][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[6][3]~combout\ : std_logic;
SIGNAL \RAM|Mux0~0_combout\ : std_logic;
SIGNAL \RAM|ram_block[7][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[5][3]~combout\ : std_logic;
SIGNAL \RAM|Mux0~1_combout\ : std_logic;
SIGNAL \RAM|ram_block[1][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[0][3]~combout\ : std_logic;
SIGNAL \RAM|Mux0~2_combout\ : std_logic;
SIGNAL \RAM|ram_block[2][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[3][3]~combout\ : std_logic;
SIGNAL \RAM|Mux0~3_combout\ : std_logic;
SIGNAL \RAM|Mux0~4_combout\ : std_logic;
SIGNAL \ALU|Mux0~1_combout\ : std_logic;
SIGNAL \ALU|Add0~11_combout\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|Mux0~2_combout\ : std_logic;
SIGNAL \mux~3_combout\ : std_logic;
SIGNAL mar : std_logic_vector(2 DOWNTO 0);
SIGNAL ac : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_input_sel <= input_sel;
ww_ac_load <= ac_load;
ww_mar_load <= mar_load;
ww_alu_sel <= alu_sel;
ww_ram_load <= ram_load;
ww_input <= input;
ww_mar_in <= mar_in;
mux_out <= ww_mux_out;
mar_out <= ww_mar_out;
data_chk <= ww_data_chk;
output <= ww_output;
m1_out <= ww_m1_out;
m2_out <= ww_m2_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|Decoder0~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~5_combout\);

\RAM|Decoder0~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~7_combout\);

\RAM|Decoder0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~6_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\RAM|Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~0_combout\);

\RAM|Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~2_combout\);

\RAM|Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~1_combout\);

\RAM|Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~3_combout\);

\RAM|Decoder0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~4_combout\);

-- Location: IOOBUF_X33_Y14_N9
\mux_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux~0_combout\,
	devoe => ww_devoe,
	o => \mux_out[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\mux_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux~1_combout\,
	devoe => ww_devoe,
	o => \mux_out[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\mux_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux~2_combout\,
	devoe => ww_devoe,
	o => \mux_out[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\mux_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux~3_combout\,
	devoe => ww_devoe,
	o => \mux_out[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\mar_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mar(0),
	devoe => ww_devoe,
	o => \mar_out[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\mar_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mar(1),
	devoe => ww_devoe,
	o => \mar_out[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\mar_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mar(2),
	devoe => ww_devoe,
	o => \mar_out[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\data_chk[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \data_chk[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\data_chk[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\data_chk[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[2]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\data_chk[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ac(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ac(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ac(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ac(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\m1_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[2][0]~combout\,
	devoe => ww_devoe,
	o => \m1_out[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\m1_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[2][1]~combout\,
	devoe => ww_devoe,
	o => \m1_out[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\m1_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[2][2]~combout\,
	devoe => ww_devoe,
	o => \m1_out[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\m1_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[2][3]~combout\,
	devoe => ww_devoe,
	o => \m1_out[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\m2_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[1][0]~combout\,
	devoe => ww_devoe,
	o => \m2_out[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\m2_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[1][1]~combout\,
	devoe => ww_devoe,
	o => \m2_out[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\m2_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[1][2]~combout\,
	devoe => ww_devoe,
	o => \m2_out[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\m2_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block[1][3]~combout\,
	devoe => ww_devoe,
	o => \m2_out[3]~output_o\);

-- Location: IOIBUF_X33_Y12_N8
\input_sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sel,
	o => \input_sel~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\alu_sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(0),
	o => \alu_sel[0]~input_o\);

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

-- Location: IOIBUF_X24_Y0_N1
\mar_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_in(2),
	o => \mar_in[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\mar_load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_load,
	o => \mar_load~input_o\);

-- Location: FF_X16_Y4_N17
\mar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mar_in[2]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mar(2));

-- Location: IOIBUF_X16_Y31_N8
\mar_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_in(0),
	o => \mar_in[0]~input_o\);

-- Location: FF_X15_Y4_N9
\mar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mar_in[0]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mar(0));

-- Location: IOIBUF_X31_Y0_N8
\mar_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_in(1),
	o => \mar_in[1]~input_o\);

-- Location: FF_X15_Y4_N7
\mar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mar_in[1]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mar(1));

-- Location: IOIBUF_X16_Y31_N1
\ram_load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_load,
	o => \ram_load~input_o\);

-- Location: LCCOMB_X15_Y4_N6
\RAM|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~1_combout\ = (!mar(2) & (mar(0) & (!mar(1) & \ram_load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(2),
	datab => mar(0),
	datac => mar(1),
	datad => \ram_load~input_o\,
	combout => \RAM|Decoder0~1_combout\);

-- Location: CLKCTRL_G15
\RAM|Decoder0~1clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X16_Y4_N14
\RAM|ram_block[1][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][0]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\RAM|ram_block[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[1][0]~combout\,
	datac => \RAM|Decoder0~1clkctrl_outclk\,
	datad => \ALU|Mux3~4_combout\,
	combout => \RAM|ram_block[1][0]~combout\);

-- Location: LCCOMB_X15_Y4_N8
\RAM|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~0_combout\ = (mar(1) & (\ram_load~input_o\ & (mar(0) & !mar(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => \ram_load~input_o\,
	datac => mar(0),
	datad => mar(2),
	combout => \RAM|Decoder0~0_combout\);

-- Location: CLKCTRL_G16
\RAM|Decoder0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X17_Y4_N4
\RAM|ram_block[3][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][0]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\RAM|ram_block[3][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[3][0]~combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \RAM|Decoder0~0clkctrl_outclk\,
	combout => \RAM|ram_block[3][0]~combout\);

-- Location: LCCOMB_X15_Y4_N30
\RAM|Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~3_combout\ = (!mar(1) & (!mar(0) & (\ram_load~input_o\ & !mar(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => mar(0),
	datac => \ram_load~input_o\,
	datad => mar(2),
	combout => \RAM|Decoder0~3_combout\);

-- Location: CLKCTRL_G2
\RAM|Decoder0~3clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X15_Y4_N26
\RAM|ram_block[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][0]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\RAM|ram_block[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[0][0]~combout\,
	datab => \ALU|Mux3~4_combout\,
	datac => \RAM|Decoder0~3clkctrl_outclk\,
	combout => \RAM|ram_block[0][0]~combout\);

-- Location: LCCOMB_X16_Y4_N8
\RAM|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~2_combout\ = (\ram_load~input_o\ & (!mar(2) & (mar(1) & !mar(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => mar(2),
	datac => mar(1),
	datad => mar(0),
	combout => \RAM|Decoder0~2_combout\);

-- Location: CLKCTRL_G13
\RAM|Decoder0~2clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X15_Y4_N20
\RAM|ram_block[2][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][0]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\RAM|ram_block[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~2clkctrl_outclk\,
	datac => \ALU|Mux3~4_combout\,
	datad => \RAM|ram_block[2][0]~combout\,
	combout => \RAM|ram_block[2][0]~combout\);

-- Location: LCCOMB_X15_Y4_N16
\RAM|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux3~0_combout\ = (mar(0) & (((mar(1))))) # (!mar(0) & ((mar(1) & ((\RAM|ram_block[2][0]~combout\))) # (!mar(1) & (\RAM|ram_block[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[0][0]~combout\,
	datab => \RAM|ram_block[2][0]~combout\,
	datac => mar(0),
	datad => mar(1),
	combout => \RAM|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y4_N2
\RAM|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux3~1_combout\ = (mar(0) & ((\RAM|Mux3~0_combout\ & ((\RAM|ram_block[3][0]~combout\))) # (!\RAM|Mux3~0_combout\ & (\RAM|ram_block[1][0]~combout\)))) # (!mar(0) & (((\RAM|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[1][0]~combout\,
	datab => mar(0),
	datac => \RAM|ram_block[3][0]~combout\,
	datad => \RAM|Mux3~0_combout\,
	combout => \RAM|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y4_N6
\RAM|Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~7_combout\ = (\ram_load~input_o\ & (mar(2) & (mar(1) & mar(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => mar(2),
	datac => mar(1),
	datad => mar(0),
	combout => \RAM|Decoder0~7_combout\);

-- Location: CLKCTRL_G19
\RAM|Decoder0~7clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~7clkctrl_outclk\);

-- Location: LCCOMB_X16_Y6_N16
\RAM|ram_block[7][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][0]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\RAM|ram_block[7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux3~4_combout\,
	datac => \RAM|ram_block[7][0]~combout\,
	datad => \RAM|Decoder0~7clkctrl_outclk\,
	combout => \RAM|ram_block[7][0]~combout\);

-- Location: LCCOMB_X16_Y4_N28
\RAM|Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~4_combout\ = (\ram_load~input_o\ & (mar(2) & (!mar(1) & mar(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => mar(2),
	datac => mar(1),
	datad => mar(0),
	combout => \RAM|Decoder0~4_combout\);

-- Location: CLKCTRL_G11
\RAM|Decoder0~4clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~4clkctrl_outclk\);

-- Location: LCCOMB_X16_Y6_N12
\RAM|ram_block[5][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][0]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[5][0]~combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \RAM|Decoder0~4clkctrl_outclk\,
	combout => \RAM|ram_block[5][0]~combout\);

-- Location: LCCOMB_X16_Y4_N24
\RAM|Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~6_combout\ = (\ram_load~input_o\ & (mar(2) & (!mar(1) & !mar(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => mar(2),
	datac => mar(1),
	datad => mar(0),
	combout => \RAM|Decoder0~6_combout\);

-- Location: CLKCTRL_G18
\RAM|Decoder0~6clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~6clkctrl_outclk\);

-- Location: LCCOMB_X15_Y4_N14
\RAM|ram_block[4][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][0]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[4][0]~combout\,
	datac => \RAM|Decoder0~6clkctrl_outclk\,
	datad => \ALU|Mux3~4_combout\,
	combout => \RAM|ram_block[4][0]~combout\);

-- Location: LCCOMB_X15_Y4_N12
\RAM|Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~5_combout\ = (mar(1) & (!mar(0) & (\ram_load~input_o\ & mar(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => mar(0),
	datac => \ram_load~input_o\,
	datad => mar(2),
	combout => \RAM|Decoder0~5_combout\);

-- Location: CLKCTRL_G1
\RAM|Decoder0~5clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~5clkctrl_outclk\);

-- Location: LCCOMB_X16_Y6_N22
\RAM|ram_block[6][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][0]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\RAM|ram_block[6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux3~4_combout\,
	datac => \RAM|Decoder0~5clkctrl_outclk\,
	datad => \RAM|ram_block[6][0]~combout\,
	combout => \RAM|ram_block[6][0]~combout\);

-- Location: LCCOMB_X15_Y4_N0
\RAM|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux3~2_combout\ = (mar(1) & (((mar(0)) # (\RAM|ram_block[6][0]~combout\)))) # (!mar(1) & (\RAM|ram_block[4][0]~combout\ & (!mar(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => \RAM|ram_block[4][0]~combout\,
	datac => mar(0),
	datad => \RAM|ram_block[6][0]~combout\,
	combout => \RAM|Mux3~2_combout\);

-- Location: LCCOMB_X15_Y6_N12
\RAM|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux3~3_combout\ = (mar(0) & ((\RAM|Mux3~2_combout\ & (\RAM|ram_block[7][0]~combout\)) # (!\RAM|Mux3~2_combout\ & ((\RAM|ram_block[5][0]~combout\))))) # (!mar(0) & (((\RAM|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][0]~combout\,
	datab => \RAM|ram_block[5][0]~combout\,
	datac => mar(0),
	datad => \RAM|Mux3~2_combout\,
	combout => \RAM|Mux3~3_combout\);

-- Location: LCCOMB_X15_Y6_N30
\ALU|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = \alu_sel[0]~input_o\ $ (((mar(2) & ((\RAM|Mux3~3_combout\))) # (!mar(2) & (\RAM|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => mar(2),
	datac => \RAM|Mux3~1_combout\,
	datad => \RAM|Mux3~3_combout\,
	combout => \ALU|Add0~0_combout\);

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

-- Location: IOIBUF_X33_Y15_N1
\ac_load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ac_load,
	o => \ac_load~input_o\);

-- Location: FF_X15_Y6_N5
\ac[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux~0_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ac(0));

-- Location: LCCOMB_X15_Y6_N20
\ALU|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_cout\ = CARRY(\alu_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datad => VCC,
	cout => \ALU|Add0~2_cout\);

-- Location: LCCOMB_X15_Y6_N22
\ALU|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~3_combout\ = (\ALU|Add0~0_combout\ & ((ac(0) & (\ALU|Add0~2_cout\ & VCC)) # (!ac(0) & (!\ALU|Add0~2_cout\)))) # (!\ALU|Add0~0_combout\ & ((ac(0) & (!\ALU|Add0~2_cout\)) # (!ac(0) & ((\ALU|Add0~2_cout\) # (GND)))))
-- \ALU|Add0~4\ = CARRY((\ALU|Add0~0_combout\ & (!ac(0) & !\ALU|Add0~2_cout\)) # (!\ALU|Add0~0_combout\ & ((!\ALU|Add0~2_cout\) # (!ac(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~0_combout\,
	datab => ac(0),
	datad => VCC,
	cin => \ALU|Add0~2_cout\,
	combout => \ALU|Add0~3_combout\,
	cout => \ALU|Add0~4\);

-- Location: IOIBUF_X20_Y0_N1
\alu_sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(1),
	o => \alu_sel[1]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\alu_sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(2),
	o => \alu_sel[2]~input_o\);

-- Location: LCCOMB_X14_Y6_N28
\ALU|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (\alu_sel[1]~input_o\) # (\alu_sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[1]~input_o\,
	datad => \alu_sel[2]~input_o\,
	combout => \ALU|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y6_N2
\ALU|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = (\alu_sel[2]~input_o\) # ((!\alu_sel[1]~input_o\ & \alu_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[0]~input_o\,
	datad => \alu_sel[2]~input_o\,
	combout => \ALU|Mux3~1_combout\);

-- Location: LCCOMB_X15_Y4_N10
\RAM|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux3~4_combout\ = (mar(2) & ((\RAM|Mux3~3_combout\))) # (!mar(2) & (\RAM|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mar(2),
	datac => \RAM|Mux3~1_combout\,
	datad => \RAM|Mux3~3_combout\,
	combout => \RAM|Mux3~4_combout\);

-- Location: LCCOMB_X16_Y6_N4
\ALU|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux3~2_combout\ = (\ALU|Mux3~1_combout\ & (((\ALU|Mux3~0_combout\) # (\RAM|Mux3~4_combout\)))) # (!\ALU|Mux3~1_combout\ & (ac(0) & (!\ALU|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~1_combout\,
	datab => ac(0),
	datac => \ALU|Mux3~0_combout\,
	datad => \RAM|Mux3~4_combout\,
	combout => \ALU|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y6_N6
\ALU|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux3~3_combout\ = (ac(0) & (\alu_sel[1]~input_o\ $ (((\alu_sel[0]~input_o\) # (\RAM|Mux3~4_combout\))))) # (!ac(0) & ((\alu_sel[0]~input_o\ & ((\alu_sel[1]~input_o\) # (\RAM|Mux3~4_combout\))) # (!\alu_sel[0]~input_o\ & (\alu_sel[1]~input_o\ & 
-- \RAM|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => ac(0),
	datac => \alu_sel[1]~input_o\,
	datad => \RAM|Mux3~4_combout\,
	combout => \ALU|Mux3~3_combout\);

-- Location: LCCOMB_X16_Y6_N24
\ALU|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux3~4_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux3~2_combout\ & ((\ALU|Mux3~3_combout\))) # (!\ALU|Mux3~2_combout\ & (\ALU|Add0~3_combout\)))) # (!\ALU|Mux3~0_combout\ & (((\ALU|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~3_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => \ALU|Mux3~2_combout\,
	datad => \ALU|Mux3~3_combout\,
	combout => \ALU|Mux3~4_combout\);

-- Location: LCCOMB_X15_Y6_N4
\mux~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux~0_combout\ = (\input_sel~input_o\ & (\input[0]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_sel~input_o\,
	datac => \input[0]~input_o\,
	datad => \ALU|Mux3~4_combout\,
	combout => \mux~0_combout\);

-- Location: IOIBUF_X33_Y14_N1
\input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X17_Y6_N16
\RAM|ram_block[7][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][1]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[7][1]~combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \RAM|Decoder0~7clkctrl_outclk\,
	combout => \RAM|ram_block[7][1]~combout\);

-- Location: LCCOMB_X17_Y6_N0
\RAM|ram_block[5][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][1]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[5][1]~combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \RAM|Decoder0~4clkctrl_outclk\,
	combout => \RAM|ram_block[5][1]~combout\);

-- Location: LCCOMB_X16_Y4_N10
\RAM|ram_block[4][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][1]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][1]~combout\,
	datac => \RAM|Decoder0~6clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block[4][1]~combout\);

-- Location: LCCOMB_X17_Y6_N30
\RAM|ram_block[6][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][1]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\RAM|ram_block[6][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datac => \RAM|Decoder0~5clkctrl_outclk\,
	datad => \RAM|ram_block[6][1]~combout\,
	combout => \RAM|ram_block[6][1]~combout\);

-- Location: LCCOMB_X16_Y4_N2
\RAM|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux2~0_combout\ = (mar(1) & (((\RAM|ram_block[6][1]~combout\) # (mar(0))))) # (!mar(1) & (\RAM|ram_block[4][1]~combout\ & ((!mar(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][1]~combout\,
	datab => mar(1),
	datac => \RAM|ram_block[6][1]~combout\,
	datad => mar(0),
	combout => \RAM|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y4_N26
\RAM|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux2~1_combout\ = (mar(0) & ((\RAM|Mux2~0_combout\ & (\RAM|ram_block[7][1]~combout\)) # (!\RAM|Mux2~0_combout\ & ((\RAM|ram_block[5][1]~combout\))))) # (!mar(0) & (((\RAM|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(0),
	datab => \RAM|ram_block[7][1]~combout\,
	datac => \RAM|ram_block[5][1]~combout\,
	datad => \RAM|Mux2~0_combout\,
	combout => \RAM|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y4_N4
\RAM|ram_block[3][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][1]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\RAM|ram_block[3][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[3][1]~combout\,
	datac => \RAM|Decoder0~0clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block[3][1]~combout\);

-- Location: LCCOMB_X15_Y4_N22
\RAM|ram_block[2][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][1]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\RAM|ram_block[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datac => \RAM|ram_block[2][1]~combout\,
	datad => \RAM|Decoder0~2clkctrl_outclk\,
	combout => \RAM|ram_block[2][1]~combout\);

-- Location: LCCOMB_X16_Y4_N22
\RAM|ram_block[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][1]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\RAM|ram_block[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux2~2_combout\,
	datac => \RAM|ram_block[0][1]~combout\,
	datad => \RAM|Decoder0~3clkctrl_outclk\,
	combout => \RAM|ram_block[0][1]~combout\);

-- Location: LCCOMB_X16_Y4_N12
\RAM|ram_block[1][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][1]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\RAM|ram_block[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[1][1]~combout\,
	datac => \RAM|Decoder0~1clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block[1][1]~combout\);

-- Location: LCCOMB_X16_Y4_N18
\RAM|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux2~2_combout\ = (mar(1) & (((mar(0))))) # (!mar(1) & ((mar(0) & ((\RAM|ram_block[1][1]~combout\))) # (!mar(0) & (\RAM|ram_block[0][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[0][1]~combout\,
	datab => \RAM|ram_block[1][1]~combout\,
	datac => mar(1),
	datad => mar(0),
	combout => \RAM|Mux2~2_combout\);

-- Location: LCCOMB_X16_Y4_N4
\RAM|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux2~3_combout\ = (mar(1) & ((\RAM|Mux2~2_combout\ & (\RAM|ram_block[3][1]~combout\)) # (!\RAM|Mux2~2_combout\ & ((\RAM|ram_block[2][1]~combout\))))) # (!mar(1) & (((\RAM|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[3][1]~combout\,
	datab => \RAM|ram_block[2][1]~combout\,
	datac => mar(1),
	datad => \RAM|Mux2~2_combout\,
	combout => \RAM|Mux2~3_combout\);

-- Location: LCCOMB_X16_Y4_N16
\RAM|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux2~4_combout\ = (mar(2) & (\RAM|Mux2~1_combout\)) # (!mar(2) & ((\RAM|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux2~1_combout\,
	datac => mar(2),
	datad => \RAM|Mux2~3_combout\,
	combout => \RAM|Mux2~4_combout\);

-- Location: FF_X15_Y6_N15
\ac[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux~1_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ac(1));

-- Location: LCCOMB_X16_Y4_N30
\ALU|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux2~1_combout\ = (ac(1) & (\alu_sel[1]~input_o\ $ (((\alu_sel[0]~input_o\) # (\RAM|Mux2~4_combout\))))) # (!ac(1) & ((\alu_sel[0]~input_o\ & ((\alu_sel[1]~input_o\) # (\RAM|Mux2~4_combout\))) # (!\alu_sel[0]~input_o\ & (\alu_sel[1]~input_o\ & 
-- \RAM|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => ac(1),
	datac => \alu_sel[1]~input_o\,
	datad => \RAM|Mux2~4_combout\,
	combout => \ALU|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y4_N0
\ALU|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_combout\ = \alu_sel[0]~input_o\ $ (((mar(2) & (\RAM|Mux2~1_combout\)) # (!mar(2) & ((\RAM|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => mar(2),
	datac => \RAM|Mux2~1_combout\,
	datad => \RAM|Mux2~3_combout\,
	combout => \ALU|Add0~5_combout\);

-- Location: LCCOMB_X15_Y6_N24
\ALU|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = ((\ALU|Add0~5_combout\ $ (ac(1) $ (!\ALU|Add0~4\)))) # (GND)
-- \ALU|Add0~7\ = CARRY((\ALU|Add0~5_combout\ & ((ac(1)) # (!\ALU|Add0~4\))) # (!\ALU|Add0~5_combout\ & (ac(1) & !\ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~5_combout\,
	datab => ac(1),
	datad => VCC,
	cin => \ALU|Add0~4\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X15_Y6_N0
\ALU|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = (\ALU|Mux3~1_combout\ & (\ALU|Mux3~0_combout\)) # (!\ALU|Mux3~1_combout\ & ((\ALU|Mux3~0_combout\ & ((\ALU|Add0~6_combout\))) # (!\ALU|Mux3~0_combout\ & (ac(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~1_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => ac(1),
	datad => \ALU|Add0~6_combout\,
	combout => \ALU|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y6_N10
\ALU|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux2~2_combout\ = (\ALU|Mux3~1_combout\ & ((\ALU|Mux2~0_combout\ & ((\ALU|Mux2~1_combout\))) # (!\ALU|Mux2~0_combout\ & (\RAM|Mux2~4_combout\)))) # (!\ALU|Mux3~1_combout\ & (((\ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~1_combout\,
	datab => \RAM|Mux2~4_combout\,
	datac => \ALU|Mux2~1_combout\,
	datad => \ALU|Mux2~0_combout\,
	combout => \ALU|Mux2~2_combout\);

-- Location: LCCOMB_X15_Y6_N14
\mux~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux~1_combout\ = (\input_sel~input_o\ & (\input[1]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_sel~input_o\,
	datac => \input[1]~input_o\,
	datad => \ALU|Mux2~2_combout\,
	combout => \mux~1_combout\);

-- Location: IOIBUF_X33_Y12_N1
\input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: FF_X16_Y6_N15
\ac[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mux~2_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ac(2));

-- Location: LCCOMB_X15_Y4_N4
\RAM|ram_block[2][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][2]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\RAM|ram_block[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~2_combout\,
	datab => \RAM|ram_block[2][2]~combout\,
	datad => \RAM|Decoder0~2clkctrl_outclk\,
	combout => \RAM|ram_block[2][2]~combout\);

-- Location: LCCOMB_X17_Y4_N14
\RAM|ram_block[3][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][2]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\RAM|ram_block[3][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[3][2]~combout\,
	datac => \RAM|Decoder0~0clkctrl_outclk\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block[3][2]~combout\);

-- Location: LCCOMB_X16_Y4_N20
\RAM|ram_block[1][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][2]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\RAM|ram_block[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[1][2]~combout\,
	datac => \RAM|Decoder0~1clkctrl_outclk\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block[1][2]~combout\);

-- Location: LCCOMB_X15_Y4_N28
\RAM|ram_block[0][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][2]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\RAM|ram_block[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~2_combout\,
	datac => \RAM|Decoder0~3clkctrl_outclk\,
	datad => \RAM|ram_block[0][2]~combout\,
	combout => \RAM|ram_block[0][2]~combout\);

-- Location: LCCOMB_X15_Y4_N24
\RAM|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux1~0_combout\ = (mar(1) & (mar(0))) # (!mar(1) & ((mar(0) & (\RAM|ram_block[1][2]~combout\)) # (!mar(0) & ((\RAM|ram_block[0][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => mar(0),
	datac => \RAM|ram_block[1][2]~combout\,
	datad => \RAM|ram_block[0][2]~combout\,
	combout => \RAM|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y4_N18
\RAM|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux1~1_combout\ = (mar(1) & ((\RAM|Mux1~0_combout\ & ((\RAM|ram_block[3][2]~combout\))) # (!\RAM|Mux1~0_combout\ & (\RAM|ram_block[2][2]~combout\)))) # (!mar(1) & (((\RAM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => \RAM|ram_block[2][2]~combout\,
	datac => \RAM|ram_block[3][2]~combout\,
	datad => \RAM|Mux1~0_combout\,
	combout => \RAM|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y6_N10
\RAM|ram_block[7][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][2]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~7clkctrl_outclk\,
	combout => \RAM|ram_block[7][2]~combout\);

-- Location: LCCOMB_X16_Y6_N18
\RAM|ram_block[5][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][2]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[5][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~4clkctrl_outclk\,
	combout => \RAM|ram_block[5][2]~combout\);

-- Location: LCCOMB_X14_Y6_N26
\RAM|ram_block[4][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][2]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~6clkctrl_outclk\,
	combout => \RAM|ram_block[4][2]~combout\);

-- Location: LCCOMB_X16_Y6_N0
\RAM|ram_block[6][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][2]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\RAM|ram_block[6][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~2_combout\,
	datac => \RAM|Decoder0~5clkctrl_outclk\,
	datad => \RAM|ram_block[6][2]~combout\,
	combout => \RAM|ram_block[6][2]~combout\);

-- Location: LCCOMB_X16_Y6_N2
\RAM|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux1~2_combout\ = (mar(0) & (((mar(1))))) # (!mar(0) & ((mar(1) & ((\RAM|ram_block[6][2]~combout\))) # (!mar(1) & (\RAM|ram_block[4][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][2]~combout\,
	datab => \RAM|ram_block[6][2]~combout\,
	datac => mar(0),
	datad => mar(1),
	combout => \RAM|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y6_N28
\RAM|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux1~3_combout\ = (mar(0) & ((\RAM|Mux1~2_combout\ & (\RAM|ram_block[7][2]~combout\)) # (!\RAM|Mux1~2_combout\ & ((\RAM|ram_block[5][2]~combout\))))) # (!mar(0) & (((\RAM|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][2]~combout\,
	datab => \RAM|ram_block[5][2]~combout\,
	datac => mar(0),
	datad => \RAM|Mux1~2_combout\,
	combout => \RAM|Mux1~3_combout\);

-- Location: LCCOMB_X16_Y6_N8
\RAM|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux1~4_combout\ = (mar(2) & ((\RAM|Mux1~3_combout\))) # (!mar(2) & (\RAM|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux1~1_combout\,
	datab => \RAM|Mux1~3_combout\,
	datac => mar(2),
	combout => \RAM|Mux1~4_combout\);

-- Location: LCCOMB_X16_Y6_N26
\ALU|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux1~1_combout\ = (ac(2) & (\alu_sel[1]~input_o\ $ (((\alu_sel[0]~input_o\) # (\RAM|Mux1~4_combout\))))) # (!ac(2) & ((\alu_sel[0]~input_o\ & ((\alu_sel[1]~input_o\) # (\RAM|Mux1~4_combout\))) # (!\alu_sel[0]~input_o\ & (\alu_sel[1]~input_o\ & 
-- \RAM|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ac(2),
	datab => \alu_sel[0]~input_o\,
	datac => \alu_sel[1]~input_o\,
	datad => \RAM|Mux1~4_combout\,
	combout => \ALU|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y6_N14
\ALU|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = (\ALU|Mux3~1_combout\ & ((\ALU|Mux3~0_combout\) # ((\RAM|Mux1~4_combout\)))) # (!\ALU|Mux3~1_combout\ & (!\ALU|Mux3~0_combout\ & (ac(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~1_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => ac(2),
	datad => \RAM|Mux1~4_combout\,
	combout => \ALU|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y6_N8
\ALU|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = \alu_sel[0]~input_o\ $ (((mar(2) & ((\RAM|Mux1~3_combout\))) # (!mar(2) & (\RAM|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => mar(2),
	datac => \RAM|Mux1~1_combout\,
	datad => \RAM|Mux1~3_combout\,
	combout => \ALU|Add0~8_combout\);

-- Location: LCCOMB_X15_Y6_N26
\ALU|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_combout\ = (ac(2) & ((\ALU|Add0~8_combout\ & (\ALU|Add0~7\ & VCC)) # (!\ALU|Add0~8_combout\ & (!\ALU|Add0~7\)))) # (!ac(2) & ((\ALU|Add0~8_combout\ & (!\ALU|Add0~7\)) # (!\ALU|Add0~8_combout\ & ((\ALU|Add0~7\) # (GND)))))
-- \ALU|Add0~10\ = CARRY((ac(2) & (!\ALU|Add0~8_combout\ & !\ALU|Add0~7\)) # (!ac(2) & ((!\ALU|Add0~7\) # (!\ALU|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ac(2),
	datab => \ALU|Add0~8_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~9_combout\,
	cout => \ALU|Add0~10\);

-- Location: LCCOMB_X16_Y6_N20
\ALU|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux1~2_combout\ = (\ALU|Mux1~0_combout\ & ((\ALU|Mux1~1_combout\) # ((!\ALU|Mux3~0_combout\)))) # (!\ALU|Mux1~0_combout\ & (((\ALU|Add0~9_combout\ & \ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~1_combout\,
	datab => \ALU|Mux1~0_combout\,
	datac => \ALU|Add0~9_combout\,
	datad => \ALU|Mux3~0_combout\,
	combout => \ALU|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y6_N30
\mux~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux~2_combout\ = (\input_sel~input_o\ & (\input[2]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_sel~input_o\,
	datac => \input[2]~input_o\,
	datad => \ALU|Mux1~2_combout\,
	combout => \mux~2_combout\);

-- Location: IOIBUF_X33_Y15_N8
\input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X14_Y6_N30
\RAM|ram_block[4][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][3]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][3]~combout\,
	datac => \RAM|Decoder0~6clkctrl_outclk\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[4][3]~combout\);

-- Location: LCCOMB_X14_Y6_N20
\RAM|ram_block[6][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][3]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\ALU|Mux0~2_combout\)) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\RAM|ram_block[6][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux0~2_combout\,
	datac => \RAM|Decoder0~5clkctrl_outclk\,
	datad => \RAM|ram_block[6][3]~combout\,
	combout => \RAM|ram_block[6][3]~combout\);

-- Location: LCCOMB_X14_Y6_N12
\RAM|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux0~0_combout\ = (mar(0) & (((mar(1))))) # (!mar(0) & ((mar(1) & ((\RAM|ram_block[6][3]~combout\))) # (!mar(1) & (\RAM|ram_block[4][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][3]~combout\,
	datab => \RAM|ram_block[6][3]~combout\,
	datac => mar(0),
	datad => mar(1),
	combout => \RAM|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y6_N18
\RAM|ram_block[7][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][3]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[7][3]~combout\,
	datac => \ALU|Mux0~2_combout\,
	datad => \RAM|Decoder0~7clkctrl_outclk\,
	combout => \RAM|ram_block[7][3]~combout\);

-- Location: LCCOMB_X17_Y6_N26
\RAM|ram_block[5][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][3]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[5][3]~combout\,
	datac => \ALU|Mux0~2_combout\,
	datad => \RAM|Decoder0~4clkctrl_outclk\,
	combout => \RAM|ram_block[5][3]~combout\);

-- Location: LCCOMB_X14_Y6_N18
\RAM|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux0~1_combout\ = (\RAM|Mux0~0_combout\ & ((\RAM|ram_block[7][3]~combout\) # ((!mar(0))))) # (!\RAM|Mux0~0_combout\ & (((mar(0) & \RAM|ram_block[5][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~0_combout\,
	datab => \RAM|ram_block[7][3]~combout\,
	datac => mar(0),
	datad => \RAM|ram_block[5][3]~combout\,
	combout => \RAM|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y5_N0
\RAM|ram_block[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][3]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\RAM|ram_block[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[1][3]~combout\,
	datac => \RAM|Decoder0~1clkctrl_outclk\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[1][3]~combout\);

-- Location: LCCOMB_X14_Y5_N26
\RAM|ram_block[0][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][3]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\ALU|Mux0~2_combout\)) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\RAM|ram_block[0][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~2_combout\,
	datac => \RAM|ram_block[0][3]~combout\,
	datad => \RAM|Decoder0~3clkctrl_outclk\,
	combout => \RAM|ram_block[0][3]~combout\);

-- Location: LCCOMB_X14_Y6_N4
\RAM|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux0~2_combout\ = (mar(0) & ((\RAM|ram_block[1][3]~combout\) # ((mar(1))))) # (!mar(0) & (((\RAM|ram_block[0][3]~combout\ & !mar(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[1][3]~combout\,
	datab => \RAM|ram_block[0][3]~combout\,
	datac => mar(0),
	datad => mar(1),
	combout => \RAM|Mux0~2_combout\);

-- Location: LCCOMB_X14_Y7_N8
\RAM|ram_block[2][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][3]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\ALU|Mux0~2_combout\)) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\RAM|ram_block[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux0~2_combout\,
	datac => \RAM|ram_block[2][3]~combout\,
	datad => \RAM|Decoder0~2clkctrl_outclk\,
	combout => \RAM|ram_block[2][3]~combout\);

-- Location: LCCOMB_X14_Y6_N24
\RAM|ram_block[3][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][3]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\ALU|Mux0~2_combout\)) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\RAM|ram_block[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~2_combout\,
	datab => \RAM|ram_block[3][3]~combout\,
	datad => \RAM|Decoder0~0clkctrl_outclk\,
	combout => \RAM|ram_block[3][3]~combout\);

-- Location: LCCOMB_X14_Y6_N22
\RAM|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux0~3_combout\ = (mar(1) & ((\RAM|Mux0~2_combout\ & ((\RAM|ram_block[3][3]~combout\))) # (!\RAM|Mux0~2_combout\ & (\RAM|ram_block[2][3]~combout\)))) # (!mar(1) & (\RAM|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(1),
	datab => \RAM|Mux0~2_combout\,
	datac => \RAM|ram_block[2][3]~combout\,
	datad => \RAM|ram_block[3][3]~combout\,
	combout => \RAM|Mux0~3_combout\);

-- Location: LCCOMB_X14_Y6_N8
\RAM|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM|Mux0~4_combout\ = (mar(2) & (\RAM|Mux0~1_combout\)) # (!mar(2) & ((\RAM|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|Mux0~1_combout\,
	datac => mar(2),
	datad => \RAM|Mux0~3_combout\,
	combout => \RAM|Mux0~4_combout\);

-- Location: FF_X15_Y6_N7
\ac[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mux~3_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ac(3));

-- Location: LCCOMB_X14_Y6_N16
\ALU|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux0~1_combout\ = (ac(3) & (\alu_sel[1]~input_o\ $ (((\alu_sel[0]~input_o\) # (\RAM|Mux0~4_combout\))))) # (!ac(3) & ((\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\) # (\RAM|Mux0~4_combout\))) # (!\alu_sel[1]~input_o\ & (\alu_sel[0]~input_o\ & 
-- \RAM|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ac(3),
	datab => \alu_sel[1]~input_o\,
	datac => \alu_sel[0]~input_o\,
	datad => \RAM|Mux0~4_combout\,
	combout => \ALU|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y6_N14
\ALU|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~11_combout\ = \alu_sel[0]~input_o\ $ (((mar(2) & (\RAM|Mux0~1_combout\)) # (!mar(2) & ((\RAM|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mar(2),
	datab => \RAM|Mux0~1_combout\,
	datac => \alu_sel[0]~input_o\,
	datad => \RAM|Mux0~3_combout\,
	combout => \ALU|Add0~11_combout\);

-- Location: LCCOMB_X15_Y6_N28
\ALU|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = \ALU|Add0~11_combout\ $ (\ALU|Add0~10\ $ (!ac(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~11_combout\,
	datad => ac(3),
	cin => \ALU|Add0~10\,
	combout => \ALU|Add0~12_combout\);

-- Location: LCCOMB_X15_Y6_N16
\ALU|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = (\ALU|Mux3~1_combout\ & (\ALU|Mux3~0_combout\)) # (!\ALU|Mux3~1_combout\ & ((\ALU|Mux3~0_combout\ & ((\ALU|Add0~12_combout\))) # (!\ALU|Mux3~0_combout\ & (ac(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~1_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => ac(3),
	datad => \ALU|Add0~12_combout\,
	combout => \ALU|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y6_N2
\ALU|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALU|Mux0~2_combout\ = (\ALU|Mux3~1_combout\ & ((\ALU|Mux0~0_combout\ & ((\ALU|Mux0~1_combout\))) # (!\ALU|Mux0~0_combout\ & (\RAM|Mux0~4_combout\)))) # (!\ALU|Mux3~1_combout\ & (((\ALU|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~1_combout\,
	datab => \RAM|Mux0~4_combout\,
	datac => \ALU|Mux0~1_combout\,
	datad => \ALU|Mux0~0_combout\,
	combout => \ALU|Mux0~2_combout\);

-- Location: LCCOMB_X15_Y6_N6
\mux~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux~3_combout\ = (\input_sel~input_o\ & (\input[3]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input_sel~input_o\,
	datad => \ALU|Mux0~2_combout\,
	combout => \mux~3_combout\);

ww_mux_out(0) <= \mux_out[0]~output_o\;

ww_mux_out(1) <= \mux_out[1]~output_o\;

ww_mux_out(2) <= \mux_out[2]~output_o\;

ww_mux_out(3) <= \mux_out[3]~output_o\;

ww_mar_out(0) <= \mar_out[0]~output_o\;

ww_mar_out(1) <= \mar_out[1]~output_o\;

ww_mar_out(2) <= \mar_out[2]~output_o\;

ww_data_chk(0) <= \data_chk[0]~output_o\;

ww_data_chk(1) <= \data_chk[1]~output_o\;

ww_data_chk(2) <= \data_chk[2]~output_o\;

ww_data_chk(3) <= \data_chk[3]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_m1_out(0) <= \m1_out[0]~output_o\;

ww_m1_out(1) <= \m1_out[1]~output_o\;

ww_m1_out(2) <= \m1_out[2]~output_o\;

ww_m1_out(3) <= \m1_out[3]~output_o\;

ww_m2_out(0) <= \m2_out[0]~output_o\;

ww_m2_out(1) <= \m2_out[1]~output_o\;

ww_m2_out(2) <= \m2_out[2]~output_o\;

ww_m2_out(3) <= \m2_out[3]~output_o\;
END structure;


