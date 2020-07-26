--32-bit adder defined in behavioural VHDL.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY ADDER32BITS_B IS
	PORT(
		a, b		: IN	STD_LOGIC_VECTOR(31 downto 0);
		sum			: OUT	STD_LOGIC_VECTOR(31 downto 0));
END ADDER32BITS_B;

ARCHITECTURE behv OF ADDER32BITS_B IS
BEGIN

	sum <= a + b;
	
end behv;