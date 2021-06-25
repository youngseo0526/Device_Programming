LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
ENTITY Lab_03 IS
	PORT(Clock : IN STD_LOGIC;
		  reset : IN STD_LOGIC;
		  Load_A : IN STD_LOGIC;
		  A : IN STD_LOGIC_VECTOR(7 downto 0);
		  S : IN STD_LOGIC;
		  state_out : BUFFER STD_LOGIC_VECTOR(1 downto 0);
		  Done : OUT STD_LOGIC;
		  B : OUT STD_LOGIC_VECTOR(3 downto 0));
END Lab_03;
ARCHITECTURE Behavior OF Lab_03 IS
	SIGNAL state_A : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL state_B : STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	PROCESS(reset, Clock, state_A, state_B)
	BEGIN
		IF (reset = '0') THEN
			state_A <= "00000000";
			state_B <= "0000";
			state_out <= "00";
			Done <= '0';
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			CASE state_out IS
				WHEN "00" =>
					IF (Load_A = '1') THEN
						state_out <= "01";
						state_A <= A;
					END IF;
				WHEN "01" =>
					IF (S = '1') THEN
						state_out <= "10";
					END IF;
				WHEN "10" =>
					IF NOT(state_A = "00000000") THEN
						IF (state_A(0) = '1') THEN
							state_B <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(state_B)) + 1, 4));
						END IF;
						FOR i IN 6 downto 0 LOOP
							state_A(i) <= state_A(i+1);
						END LOOP;
						state_A(7) <= '0';
					ELSE
						state_out <= "11";
						Done <= '1';
					END IF;
				WHEN OTHERS =>
					IF NOT(state_out = "11") THEN
						Done <= '0';
					END IF;
			END CASE;
		END IF;
		B <= state_B;
	END PROCESS;
END Behavior;