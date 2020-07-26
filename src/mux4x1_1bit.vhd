--1-bit, 4-to-1 multiplexor defined in structural VHDL.
library IEEE;
use IEEE.std_Logic_1164.all;

entity mux4x1_1bit is
port ( a,b,c,d 		: in std_logic;
		 s					: in std_logic_vector(1 downto 0);
		 m					: out std_logic);
end mux4x1_1bit;

architecture structural of mux4x1_1bit is
begin
	
	
	m <= ((a and not(s(1)) and not(s(0))) or (b and not(s(1)) and s(0)) or (c and s(1) and not(s(0))) or (d and s(1) and s(0)));
	
	
end structural;
