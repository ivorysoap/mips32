--32-bit adder defined in structural VHDL.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ADDER32BITS IS
	PORT(
		a, b		: IN	STD_LOGIC_VECTOR(31 downto 0);
		cin		: IN STD_LOGIC;
		cout		: OUT	STD_LOGIC;
		sum			: OUT	STD_LOGIC_VECTOR(31 downto 0));
END ADDER32BITS;

ARCHITECTURE rtl OF ADDER32BITS IS
	SIGNAL int_sum, int_cout : STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL gnd : STD_LOGIC;

	COMPONENT ADDER1BIT
	PORT(
			 a, b, cin   : in std_logic;
          sum, cout   : out std_logic);
	END COMPONENT;

BEGIN

	-- Concurrent Signal Assignment
	gnd <= '0';
	
	--Port Map
	add31: ADDER1BIT port map (cin,			 a(31), b(31), int_sum(31), int_cout(31)); 
	add30: ADDER1BIT port map (int_cout(31), a(30), b(30), int_sum(30), int_cout(30)); 
	add29: ADDER1BIT port map (int_cout(30), a(29), b(29), int_sum(29), int_cout(29)); 
	add28: ADDER1BIT port map (int_cout(29), a(28), b(28), int_sum(28), int_cout(28)); 
	add27: ADDER1BIT port map (int_cout(28), a(27), b(27), int_sum(27), int_cout(27)); 
	add26: ADDER1BIT port map (int_cout(27), a(26), b(26), int_sum(26), int_cout(26)); 
	add25: ADDER1BIT port map (int_cout(26), a(25), b(25), int_sum(25), int_cout(25)); 
	add24: ADDER1BIT port map (int_cout(25), a(24), b(24), int_sum(24), int_cout(24)); 
	add23: ADDER1BIT port map (int_cout(24), a(23), b(23), int_sum(23), int_cout(23)); 
	add22: ADDER1BIT port map (int_cout(23), a(22), b(22), int_sum(22), int_cout(22)); 
	add21: ADDER1BIT port map (int_cout(22), a(21), b(21), int_sum(21), int_cout(21)); 
	add20: ADDER1BIT port map (int_cout(21), a(20), b(20), int_sum(20), int_cout(20)); 
	add19: ADDER1BIT port map (int_cout(20), a(19), b(19), int_sum(19), int_cout(19)); 
	add18: ADDER1BIT port map (int_cout(19), a(18), b(18), int_sum(18), int_cout(18)); 
	add17: ADDER1BIT port map (int_cout(18), a(17), b(17), int_sum(17), int_cout(17)); 
	add16: ADDER1BIT port map (int_cout(17), a(16), b(16), int_sum(16), int_cout(16)); 
	add15: ADDER1BIT port map (int_cout(16), a(15), b(15), int_sum(15), int_cout(15)); 
	add14: ADDER1BIT port map (int_cout(15), a(14), b(14), int_sum(14), int_cout(14)); 
	add13: ADDER1BIT port map (int_cout(14), a(13), b(13), int_sum(13), int_cout(13)); 
	add12: ADDER1BIT port map (int_cout(13), a(12), b(12), int_sum(12), int_cout(12)); 
	add11: ADDER1BIT port map (int_cout(12), a(11), b(11), int_sum(11), int_cout(11)); 
	add10: ADDER1BIT port map (int_cout(11), a(10), b(10), int_sum(10), int_cout(10)); 
	add9: ADDER1BIT port map (int_cout(10), a(9), b(9), int_sum(9), int_cout(9)); 
	add8: ADDER1BIT port map (int_cout(9), a(8), b(8), int_sum(8), int_cout(8)); 
	add7: ADDER1BIT port map (int_cout(8), a(7), b(7), int_sum(7), int_cout(7)); 
	add6: ADDER1BIT port map (int_cout(7), a(6), b(6), int_sum(6), int_cout(6)); 
	add5: ADDER1BIT port map (int_cout(6), a(5), b(5), int_sum(5), int_cout(5)); 
	add4: ADDER1BIT port map (int_cout(5), a(4), b(4), int_sum(4), int_cout(4)); 
	add3: ADDER1BIT port map (int_cout(4), a(3), b(3), int_sum(3), int_cout(3)); 
	add2: ADDER1BIT port map (int_cout(3), a(2), b(2), int_sum(2), int_cout(2)); 
	add1: ADDER1BIT port map (int_cout(2), a(1), b(1), int_sum(1), int_cout(1)); 
	add0: ADDER1BIT port map (int_cout(1), a(0), b(0), int_sum(0), int_cout(0)); 


	-- Output Driver
	sum <= int_sum;
	cout <= int_cout(0);

END rtl;