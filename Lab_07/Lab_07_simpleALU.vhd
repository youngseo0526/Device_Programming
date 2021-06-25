LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY Lab_07_simpleALU IS
 PORT (	op1, op2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			sel		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			alu_out	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
END Lab_07_simpleALU;

ARCHITECTURE sample OF Lab_07_simpleALU IS
BEGIN
 PROCESS (sel, op1, op2)
 BEGIN
   case sel is
		when "000" => alu_out <= op1;
		when "001" => alu_out <= op2;
		when "010" => alu_out <= op1 + op2;
		when "011" => alu_out <= op1 - op2;
		when "100" => alu_out <= op1 and op2;
		when "101" => alu_out <= op1 or op2;
		when "110" => alu_out <= op1 xor op2;
		when others => alu_out <= not op1;
  end case;
 END PROCESS;
END sample;
