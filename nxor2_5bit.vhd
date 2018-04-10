--5-bit NXOR gate.

library ieee;
use ieee.std_logic_1164.all;

entity nxor2_5bit is
	port(	a : in std_logic_vector(4 downto 0);
			b : in std_logic_vector(4 downto 0);
			o : out std_logic_vector(4 downto 0));
end nxor2_5bit;
			
architecture structural of nxor2_5bit is
begin

	--Output Driver
	o <= not(a(4) xor b(4)) & not(a(3) xor b(3)) & not(a(2) xor b(2)) & not(a(1) xor b(1)) & not(a(0) xor b(0));

end structural;