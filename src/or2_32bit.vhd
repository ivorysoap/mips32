--32-bit OR gate.
library IEEE;
use IEEE.std_Logic_1164.all;

entity or2_32bit is
port ( a,b 		: in std_logic_vector(31 downto 0);
		 o		: out std_logic_vector(31 downto 0));
end or2_32bit;

architecture structural of or2_32bit is
begin
	
	--Output Driver
	o <= (a(31) or b(31)) & (a(30) or b(30)) & (a(29) or b(29)) & (a(28) or b(28)) & (a(27) or b(27)) & (a(26) or b(26)) & (a(25) or b(25)) & (a(24) or b(24)) & (a(23) or b(23)) & (a(22) or b(22)) & (a(21) or b(21)) & (a(20) or b(20)) & (a(19) or b(19)) & (a(18) or b(18)) & (a(17) or b(17)) & (a(16) or b(16)) & (a(15) or b(15)) & (a(14) or b(14)) & (a(13) or b(13)) & (a(12) or b(12)) & (a(11) or b(11)) & (a(10) or b(10)) & (a(9) or b(9)) & (a(8) or b(8)) & (a(7) or b(7)) & (a(6) or b(6)) & (a(5) or b(5)) & (a(4) or b(4)) & (a(3) or b(3)) & (a(2) or b(2)) & (a(1) or b(1)) & (a(0) or b(0));
	
end structural;
