--5-bit comparator.

library ieee;
use ieee.std_logic_1164.all;

entity comp5 is
	port(	a 		: in std_logic_vector(4 downto 0);
			b 		: in std_logic_vector(4 downto 0);
			same	: out std_logic);
end comp5;

architecture structural of comp5 is

signal xor_out : std_logic_vector(4 downto 0);
signal o : std_logic;

component nxor2_5bit
	port(	a : in std_logic_vector(4 downto 0);
			b : in std_logic_vector(4 downto 0);
			o : out std_logic_vector(4 downto 0));
end component;

begin

	--Concurrent Signal Assignment
	o <= xor_out(4) and xor_out(3) and xor_out(2) and xor_out(1) and xor_out(0);
	
	--Port Map
	xor_gate : nxor2_5bit port map(a, b, xor_out);
	
	--Output Driver
	same <= o;

end structural;