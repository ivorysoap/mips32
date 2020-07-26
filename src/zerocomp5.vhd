--5-bit zero comparator.
--Outputs '1' if input contains only zeroes; '0' otherwise.
library IEEE;
use IEEE.std_Logic_1164.all;

entity zerocomp5 is
	port ( a		: in std_logic_vector(4 downto 0);
			 zero	: out std_logic);
end zerocomp5;

architecture structural of zerocomp5 is
signal gnd : std_logic;
begin
	
	--Concurrent Signal Assignment
	gnd <= '0';
	
	--Output Driver
	zero <= not(a(4) or a(3) or a(2) or a(1) or a(0));
	
end structural;
