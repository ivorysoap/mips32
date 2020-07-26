-- Shift left by 2
library IEEE;
use IEEE.std_Logic_1164.all;

entity shl2 is
	port(	i : in std_logic_vector(31 downto 0);
			o : out std_logic_vector(31 downto 0));
end shl2;

architecture structural of shl2 is
begin

	--Output Driver
	o <= i(29 downto 0) & "00";
	
end structural;
