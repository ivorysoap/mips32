--1-bit, 2-to-1 multiplexor defined in structural VHDL.
library IEEE;
use IEEE.std_Logic_1164.all;

entity mux2x1_1bit is
port ( a,b 		: in std_logic;
		 s			: in std_logic;
		 m			: out std_logic);
end mux2x1_1bit;

architecture structural of mux2x1_1bit is
begin
	
	
	m <= ((a and not(s)) or (b and s));
	
	
end structural;
