--1-bit to 32-bit extension unit for SLT operations in the MIPS ALU.
--The only thing this does is concatenates 31 zeroes before the 1-bit input signal.
library IEEE;
use IEEE.std_Logic_1164.all;

entity sltextend is
	port(	i : in std_logic;
			o : out std_logic_vector(31 downto 0));
end sltextend;

architecture structural of sltextend is
begin

	--Output Driver
	o <= "0000000000000000000000000000000" & i;
	
end structural;
	