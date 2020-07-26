--32-bit NOT gate.
library IEEE;
use IEEE.std_Logic_1164.all;

entity not_32bit is
port ( a 		: in std_logic_vector(31 downto 0);
		   o		: out std_logic_vector(31 downto 0));
end not_32bit;

architecture structural of not_32bit is
begin

	--Output Driver
  o <= not(a(31)) & not(a(30)) & not(a(29)) & not(a(28)) & not(a(27)) & not(a(26)) & not(a(25)) & not(a(24)) & not(a(23)) & not(a(22)) & not(a(21)) & not(a(20)) & not(a(19)) & not(a(18)) & not(a(17)) & not(a(16)) & not(a(15)) & not(a(14)) & not(a(13)) & not(a(12)) & not(a(11)) & not(a(10)) & not(a(9)) & not(a(8)) & not(a(7)) & not(a(6)) & not(a(5)) & not(a(4)) & not(a(3)) & not(a(2)) & not(a(1)) & not(a(0));

end structural;
