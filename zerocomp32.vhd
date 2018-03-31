--32-bit zero comparator.
--Outputs '1' if input contains only zeroes; '0' otherwise.
library IEEE;
use IEEE.std_Logic_1164.all;

entity zerocomp32 is
port ( a		: in std_logic_vector(31 downto 0);
		 zero	: out std_logic);
end zerocomp32;

architecture structural of zerocomp32 is
signal gnd : std_logic;
begin
	
	--Concurrent Signal Assignment
	gnd <= '0';
	
	--Output Driver
	zero <= not(a(31) or a(30) or a(29) or a(28) or a(27) or a(26) or a(25) or a(24) or a(23) or a(22) or a(21) or a(20) or a(19) or a(18) or a(17) or a(16) or a(15) or a(14) or a(13) or a(12) or a(11) or a(10) or a(9) or a(8) or a(7) or a(6) or a(5) or a(4) or a(3) or a(2) or a(1) or a(0));
	
end structural;
