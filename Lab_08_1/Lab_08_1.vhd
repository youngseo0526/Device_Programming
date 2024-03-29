LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity lab_08_1 is
	port( clk      : IN STD_LOGIC ;
			load     : IN STD_LOGIC ;
			clear    : IN STD_LOGIC ;
			out_sel	: IN std_logic ;
			
			iNOT10 	: out std_logic;
			dp_out	: out std_logic_vector(3 downto 0));
END lab_08_1;

Architecture dataflow of lab_08_1 is
	signal data : std_logic_vector(3 downto 0) := "0000";
	begin
		process(clear, clk) is
			begin 		
			if (clear = '1') then
           			 data <= "0000";		
			elsif (clk'EVENT AND clk = '1') then
            			  if (load = '1') then
				data <= data + '1';
			  end if;		
			end if;	
		end process;		
		iNOT10 <= '0' when (data = "1010") else '1';
		dp_out <= data when (out_sel = '1') else "ZZZZ";	
end dataflow;
