LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mp IS PORT (
	Clock, Reset: IN STD_LOGIC;
	Input: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Halt: OUT STD_LOGIC);
END mp;

ARCHITECTURE Structural OF mp IS
	COMPONENT cu PORT (
		clock, reset : IN STD_LOGIC;
		IRload, PCload, INmux, Aload, JNZmux: OUT STD_LOGIC;
		IR: IN STD_LOGIC_VECTOR(7 DOWNTO 5);
		Aneq0: IN STD_LOGIC;
		halt: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT dp PORT (
		Clock, Clear: IN STD_LOGIC;
		Input: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		IRload, PCload, INmux, Aload, JNZmux: IN STD_LOGIC;
		IR: OUT STD_LOGIC_VECTOR(7 DOWNTO 5);
		Xneq0: OUT STD_LOGIC;
		Output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;

	SIGNAL mp_IRload, mp_PCload, mp_INmux, mp_Aload, mp_JNZmux: STD_LOGIC;
	SIGNAL mp_IR: STD_LOGIC_VECTOR(7 DOWNTO 5);
	SIGNAL mp_Aneq0: STD_LOGIC;
BEGIN
    -- doing structural modeling for the microprocessor here
	U0: cu PORT MAP(Clock, Reset, mp_IRload, mp_PCload, mp_INmux, mp_Aload, mp_JNZmux, mp_IR, mp_Aneq0, Halt);
	U1: dp PORT MAP(Clock, Reset, Input, mp_IRload, mp_PCload, mp_INmux, mp_Aload, mp_JNZmux, mp_IR, mp_Aneq0, Output);
END Structural;