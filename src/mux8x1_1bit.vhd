--1-bit, 8-to-1 multiplexor defined in structural VHDL.
library IEEE;
use IEEE.std_Logic_1164.all;

entity mux8x1_1bit is
port ( a,b,c,d,e,f,g,h 		: in std_logic;
		 s							: in std_logic_vector(2 downto 0);
		 m							: out std_logic);
end mux8x1_1bit;

architecture structural of mux8x1_1bit is
begin
	
	
	m <= ((a and not(s(2)) and not(s(1)) and not(s(0))) or (b and not(s(2)) and not(s(1)) and s(0)) or (c and not(s(2)) and s(1) and not(s(0))) or (d and not(s(2)) and s(1) and s(0)) or (e and s(2) and not(s(1)) and not(s(0))) or (f and s(2) and not(s(1)) and s(0)) or (g and s(2) and s(1) and not(s(0))) or (h and s(2) and s(1) and s(0)));
	
	
end structural;
