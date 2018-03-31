LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ADDER8BITS IS
	PORT(
		i_Ai, i_Bi		: IN	STD_LOGIC_VECTOR(7 downto 0);
		i_CarryIn		: IN STD_LOGIC;
		o_CarryOut		: OUT	STD_LOGIC;
		o_Sum			: OUT	STD_LOGIC_VECTOR(7 downto 0));
END ADDER8BITS;

ARCHITECTURE rtl OF ADDER8BITS IS
	SIGNAL int_Sum, int_CarryOut : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL gnd : STD_LOGIC;

	COMPONENT ADDER1BIT
	 port(   a, b, cin   : in std_logic;
				sum, cout   : out std_logic);
	END COMPONENT;

BEGIN

	-- Concurrent Signal Assignment
	gnd <= '0';

add7: ADDER1BIT port map (i_CarryIn,			i_Ai(7), i_Bi(7), int_Sum(7), int_CarryOut(7));
add6: ADDER1BIT port map (int_CarryOut(7), i_Ai(6), i_Bi(6), int_Sum(6), int_CarryOut(6));
add5: ADDER1BIT port map (int_CarryOut(6), i_Ai(5), i_Bi(5), int_Sum(5), int_CarryOut(5));
add4: ADDER1BIT port map (int_CarryOut(5), i_Ai(4), i_Bi(4), int_Sum(4), int_CarryOut(4));
add3: ADDER1BIT port map (int_CarryOut(4), i_Ai(3), i_Bi(3), int_Sum(3), int_CarryOut(3));
add2: ADDER1BIT port map (int_CarryOut(3), i_Ai(2), i_Bi(2), int_Sum(2), int_CarryOut(2));
add1: ADDER1BIT port map (int_CarryOut(2), i_Ai(1), i_Bi(1), int_Sum(1), int_CarryOut(1));
add0: ADDER1BIT port map (int_CarryOut(1), i_Ai(0), i_Bi(0), int_Sum(0), int_CarryOut(0));


	-- Output Driver
	o_Sum <= int_Sum;
	o_CarryOut <= int_CarryOut(0);

END rtl;