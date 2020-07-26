--16 to 32-bit sign extension unit.
library IEEE;
use IEEE.std_Logic_1164.all;

entity signextend is
port ( i		: in std_logic_vector(15 downto 0);
		 o		: out std_logic_vector(31 downto 0));
end signextend;

architecture structural of signextend is
begin
	
	--Output Driver
	o <= "0000000000000000" & i;
	
end structural;
