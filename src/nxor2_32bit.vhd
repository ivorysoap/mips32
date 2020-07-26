--32-bit NXOR gate.

library ieee;
use ieee.std_logic_1164.all;

entity nxor2_32bit is
	port(	a : in std_logic_vector(31 downto 0);
			b : in std_logic_vector(31 downto 0);
			o : out std_logic_vector(31 downto 0));
end nxor2_32bit;
			
architecture structural of nxor2_32bit is
begin

	--Output Driver
	o <= not(a(31) xor b(31)) & not(a(30) xor b(30)) & not(a(29) xor b(29)) & not(a(28) xor b(28)) & not(a(27) xor b(27)) & not(a(26) xor b(26)) & not(a(25) xor b(25)) & not(a(24) xor b(24)) & not(a(23) xor b(23)) & not(a(22) xor b(22)) & not(a(21) xor b(21)) & not(a(20) xor b(20)) & not(a(19) xor b(19)) & not(a(18) xor b(18)) & not(a(17) xor b(17)) & not(a(16) xor b(16)) & not(a(15) xor b(15)) & not(a(14) xor b(14)) & not(a(13) xor b(13)) & not(a(12) xor b(12)) & not(a(11) xor b(11)) & not(a(10) xor b(10)) & not(a(9) xor b(9)) & not(a(8) xor b(8)) & not(a(7) xor b(7)) & not(a(6) xor b(6)) & not(a(5) xor b(5)) & not(a(4) xor b(4)) & not(a(3) xor b(3)) & not(a(2) xor b(2)) & not(a(1) xor b(1)) & not(a(0) xor b(0));

end structural;