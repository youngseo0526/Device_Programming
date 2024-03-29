LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Lab_06_2 IS
 PORT (	clock1, clock2: IN STD_LOGIC;
			data_in: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			write_address: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			read_address: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wr: IN STD_LOGIC;
			data_out: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END Lab_06_2;

ARCHITECTURE rtl OF Lab_06_2 IS
 TYPE MEM IS ARRAY(0 TO 255) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
 SIGNAL ram_block: MEM;
 SIGNAL read_address_reg : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
 PROCESS (clock1)
 BEGIN
   IF (clock1'event AND clock1 = '1') THEN
     IF (wr = '1') THEN
         ram_block(to_integer(unsigned(write_address))) <= data_in;
     END IF;
   END IF;
 END PROCESS;
 PROCESS (clock2)
 BEGIN
 IF (clock2'event AND clock2 = '1') THEN
   data_out <= ram_block(to_integer(unsigned(read_address_reg)));
   read_address_reg <= read_address;
 END IF;
 END PROCESS;
END rtl; 