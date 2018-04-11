--Forwarding unit for MIPS pipelined processor.

library ieee;
use ieee.std_logic_1164.all;

entity ForwardingUnit is
	port(	
			--Datapath inputs
			EXMrd			: in std_logic_vector(4 downto 0);
			MWBrd			: in std_logic_vector(4 downto 0);
			IDEXrs		: in std_logic_vector(4 downto 0);
			IDEXrt		: in std_logic_vector(4 downto 0);
			
			--Controlpath inputs
			EXMRegWrite	: in std_logic;
			MWBRegWrite	: in std_logic;
			
			ForwardA		: out std_logic_vector(1 downto 0);
			ForwardB		: out std_logic_vector(1 downto 0));

end ForwardingUnit;
			
architecture structural of ForwardingUnit is

signal C1, C2, C3, C4, NZ1, NZ2, A, B, C, D : std_logic;
signal outA, outB : std_logic_vector(1 downto 0);

component comp5
	port(	a 		: std_logic_vector(4 downto 0);
			b 		: std_logic_vector(4 downto 0);
			comp_output	: std_logic);
end component;

component zerocomp5
	port ( a		: in std_logic_vector(4 downto 0);
			 zero	: out std_logic);
end component;

component mux4x1_2bit
	port ( a,b,c,d 		: in std_logic_vector(1 downto 0);
			 s					: in std_logic_vector(1 downto 0);
			 m					: out std_logic_vector(1 downto 0));
end component;

begin

	--Concurrent Signal Assignment
	A <= (NZ1 and EXMRegWrite) and C3;
	B <= (C1 and (NZ1 and EXMRegWrite));
	C <= (MWBRegWrite and NZ2) and C2;
	D <= (MWBRegWrite and NZ2) and C4;
	
	--Port Map
 	comparator2 : comp5 port map(MWBrd, IDEXrs, C2);
	comparator3 : comp5 port map(IDEXrs, EXMrd, C3);
	comparator4 : comp5 port map(MWBrd, IDEXrt, C4);
	nonzero1		: zerocomp5 port map(EXMrd, NZ1);
	nonzero2		: zerocomp5 port map(MWBrd, NZ2);
	fwdAmux		: mux4x1_2bit port map("00", "01", "10", "10", A & C, outA);
	fwdBmux		: mux4x1_2bit port map("00", "01", "10", "10", B & D, outB);
	
	--Output Driver
	ForwardA <= outA;
	ForwardB <= outB;

end structural;



