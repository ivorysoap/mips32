--32-bit AND gate.
library IEEE;
use IEEE.std_Logic_1164.all;

entity and2_32bit is
port ( a,b 		: in std_logic_vector(31 downto 0);
		 o		: out std_logic_vector(31 downto 0));
end and2_32bit;

architecture structural of and2_32bit is
begin
	
	--Output Driver
	o <= (a(31) and b(31)) & (a(30) and b(30)) & (a(29) and b(29)) & (a(28) and b(28)) & (a(27) and b(27)) & (a(26) and b(26)) & (a(25) and b(25)) & (a(24) and b(24)) & (a(23) and b(23)) & (a(22) and b(22)) & (a(21) and b(21)) & (a(20) and b(20)) & (a(19) and b(19)) & (a(18) and b(18)) & (a(17) and b(17)) & (a(16) and b(16)) & (a(15) and b(15)) & (a(14) and b(14)) & (a(13) and b(13)) & (a(12) and b(12)) & (a(11) and b(11)) & (a(10) and b(10)) & (a(9) and b(9)) & (a(8) and b(8)) & (a(7) and b(7)) & (a(6) and b(6)) & (a(5) and b(5)) & (a(4) and b(4)) & (a(3) and b(3)) & (a(2) and b(2)) & (a(1) and b(1)) & (a(0) and b(0));
	
	
end structural;
