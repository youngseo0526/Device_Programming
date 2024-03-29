library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Lab_05 is
  port( clk, reset 				: in std_logic;
        w, x, y, z 				: in std_logic;
        ld_inc_out 				: out std_logic;
        condition_sel_out 		: out std_logic_vector(1 downto 0);
        next_address_out 		: out std_logic_vector(1 downto 0); 
        control_data 			: out std_logic_vector(2 downto 0);
		  q_out 				      : out std_logic_vector(6 downto 0));
end Lab_05;

architecture rtl of Lab_05 is
  signal address			: std_logic_vector(1 downto 0);
  signal next_address	: std_logic_vector(1 downto 0); 
  signal condition_sel	: std_logic_vector(1 downto 0);
  
  signal ld_inc	: std_logic;
  signal q 			: std_logic_vector(6 downto 0);
  
  type ROM is array(0 to 3) of std_logic_vector(6 downto 0);
  constant rom_7x4: ROM := (
  "0000001",
  "0001010",
  "0110100",
  "1011111"
  );

begin
  reg : process (clk, reset)
  begin
    if reset = '1' then
      address <= "00";
    elsif clk'event and clk='1' then
      if ld_inc ='1' then
        address <= next_address;
      else
        address <= address + 1;
      end if;
    end if;
  end process;
   
  con_mux: process(condition_sel, w, x, y, z)
   begin
     case condition_sel is
       when "00" => ld_inc <= w;
       when "01" => ld_inc <= x;
       when "10" => ld_inc <= y;
       when "11" => ld_inc <= z;
       when others => ld_inc <= '1';
      end case;
  end process;
       
  q <= rom_7x4(to_integer(unsigned(address)));
   
  ld_inc_out <= ld_inc;
  condition_sel_out <= condition_sel;
  next_address_out <= next_address; 
  next_address <= q(6 downto 5);
  condition_sel <= q(4 downto 3);
  control_data<=q(2 downto 0);
  q_out <= q;
end rtl;