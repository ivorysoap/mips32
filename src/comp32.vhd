--32-bit comparator.

library ieee;
use ieee.std_logic_1164.all;

entity comp32 is
	port(	a 		: in std_logic_vector(31 downto 0);
			b 		: in std_logic_vector(31 downto 0);
			same	: out std_logic);
end comp32;

architecture structural of comp32 is

signal xor_out : std_logic_vector(31 downto 0);
signal o : std_logic;

component nxor2_32bit
	port(	a : in std_logic_vector(31 downto 0);
			b : in std_logic_vector(31 downto 0);
			o : out std_logic_vector(31 downto 0));
end component;

begin

	--Concurrent Signal Assignment
	o <= xor_out(31) and xor_out(30) and xor_out(29) and xor_out(28) and xor_out(27) and xor_out(26) and xor_out(25) and xor_out(24) and xor_out(23) and xor_out(22) and xor_out(21) and xor_out(20) and xor_out(19) and xor_out(18) and xor_out(17) and xor_out(16) and xor_out(15) and xor_out(14) and xor_out(13) and xor_out(12) and xor_out(11) and xor_out(10) and xor_out(9) and xor_out(8) and xor_out(7) and xor_out(6) and xor_out(5) and xor_out(4) and xor_out(3) and xor_out(2) and xor_out(1) and xor_out(0);
	
	--Port Map
	xor_gate : nxor2_32bit port map(a, b, xor_out);
	
	--Output Driver
	same <= o;

end structural;