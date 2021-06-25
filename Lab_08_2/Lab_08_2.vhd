LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Lab_08_2 is
	port( clk      : IN STD_LOGIC;
			load     : IN STD_LOGIC;
			clear    : IN STD_LOGIC;
			out_sel	: IN std_logic;
			iNOT10 	: out std_logic;
			dp_out	: out std_logic_vector(3 downto 0));
END Lab_08_2;

Architecture dataflow of Lab_08_2 is
	TYPE state_type IS (S0, S1, S2, S3);
	SIGNAL state	 : state_type;
	SIGNAL iNOT10_s : std_logic := '1';
	SIGNAL data     : std_logic_vector(3 downto 0) := "0000";

	begin
		process(clear, clk) is
			begin 
			if (clear = '1') then
						data <= "0000";
						state <= S0;
			elsif (clk'EVENT AND clk = '1') then
				CASE state IS
					WHEN S0 =>
						if (load = '1') then
							data <= data + '1';
							state <= S1;
						end if;
					WHEN S1 =>
						IF(load = '1' and out_sel = '1') then
							data <= data + '1';
							dp_out <= data;
							state <= S2;
						elsif out_sel = '0' then
							dp_out <= "ZZZZ";
						end if;
					WHEN S2 =>
						if(load = '1' and out_sel = '1' and iNOT10_s /= '0') then
							data <= data + '1';
							dp_out <= data;
						end if;
						if data = "1010" then
							state <= S3;
							iNOT10_s <= '0';
						else 
							iNOT10_s <= '1';
						end if;
					WHEN S3 =>
						if (out_sel = '0') then
							dp_out <= "ZZZZ";
						end if;
				end case;
			end if;	
		end process;
		dp_out <= "ZZZZ" WHEN out_sel = '0';
		iNOT10 <= iNOT10_s;
end dataflow;