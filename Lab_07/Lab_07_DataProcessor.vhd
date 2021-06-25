LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

ENTITY Lab_07_DataProcessor IS
PORT (	clk			: IN STD_LOGIC;
			input_sel	: IN STD_LOGIC;
			ac_load		: IN STD_LOGIC;
			mar_load		: IN STD_LOGIC;
			alu_sel		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			ram_load 	: IN STD_LOGIC;
			input			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			mar_in		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			mux_out     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			mar_out	   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			data_chk		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			output 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			m1_out		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			m2_out 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END Lab_07_DataProcessor;

ARCHITECTURE structual OF Lab_07_DataProcessor IS
	SIGNAL ac			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mux     	:	STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mar     	:	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL ram_out		:	STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL alu_out_sig:	STD_LOGIC_VECTOR(3 DOWNTO 0);

	COMPONENT Lab_07_asyncRAM
		PORT (	data_in  :  IN 	STD_LOGIC_VECTOR (3 DOWNTO 0);
					address  : 	IN 	STD_LOGIC_VECTOR (2 DOWNTO 0);
					wr	      : 	IN 	STD_LOGIC;
					data_out :	OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0);
					m1_out	:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
					m2_out	:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;

	COMPONENT Lab_07_simpleALU
		PORT (	op1, op2 : 	IN		STD_LOGIC_VECTOR (3 DOWNTO 0);
					sel		:	IN 	STD_LOGIC_VECTOR (2 DOWNTO 0);
					alu_out	: 	OUT 	STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT;

BEGIN
	RAM:	Lab_07_asyncRAM	PORT MAP(data_in=>alu_out_sig,address=>mar,wr=>ram_load,data_out=>ram_out,m1_out=>m1_out,m2_out=>m2_out);
	ALU:	Lab_07_simpleALU	PORT MAP(op1=>ac,op2=>ram_out,sel=>alu_sel,alu_out=>alu_out_sig);

PROCESS(clk,mar_load,ac_load,input_sel)
BEGIN
	IF clk'EVENT AND clk = '1' THEN
		IF ac_load = '1' THEN
			ac <= mux;
		END IF;
	END IF;

	IF clk'EVENT AND clk='1' THEN
		IF mar_load = '1' THEN
			mar <= mar_in;
		END IF;
	END IF;

	IF input_sel = '1' THEN
		mux <= input;
	ELSE
		mux <= alu_out_sig;
	END IF;
END PROCESS;

output <= ac;
data_chk <= alu_out_sig;
mux_out <= mux;
mar_out <= mar;
END structual;