library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_04 is
  port (clk : in std_logic;
         A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         F : out std_logic);
end Lab_04;

architecture structural of Lab_04 is
   signal input : std_logic_vector(2 downto 0);
   signal output : std_logic_vector(2 downto 0);

component rom3_ex
  PORT
   (  address : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      clock : IN STD_LOGIC  := '1';
      q : OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
end component;

begin
   input(2) <= A;
   input(1) <= B;
   input(0) <= C;
   
   rom : rom3_ex PORT MAP
      (address => input,
       clock => clk,
       q => output);
       F <= output(0);
end structural;