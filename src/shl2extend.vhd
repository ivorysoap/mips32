-- Shift left and extend by 2 (padding LSBs with 0's).
library IEEE;
use IEEE.std_Logic_1164.all;

entity shl2extend is
	port(	i : in std_logic_vector(25 downto 0);
			o : out std_logic_vector(27 downto 0));
end shl2extend;

architecture structural of shl2extend is
begin

	--Output Driver
	o <= i(25 downto 0) & "00";
	
end structural;