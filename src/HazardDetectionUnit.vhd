--Hazard detection unit for pipelined MIPS processor.

library ieee;
use ieee.std_logic_1164.all;

entity HazardDetectionUnit is
	port(		
			--Datapath inputs
			IFIDrt		: in std_logic_vector(4 downto 0);
			IDEXrt		: in std_logic_vector(4 downto 0);
			IFIDrs		: in std_logic_vector(4 downto 0);
			
			--Controlpath inputs
			IDEXMemRead : in std_logic;
			
			PCWrite		: out std_logic;
			IFIDWrite	: out std_logic;
			IDEXFlush	: out std_logic);

end HazardDetectionUnit;

architecture structural of HazardDetectionUnit is

signal same1 : std_logic;
signal same2 : std_logic;
signal NZ1 : std_logic;
signal stall : std_logic;

component comp5
	port(	a 				: in std_logic_vector(4 downto 0);
			b 				: in std_logic_vector(4 downto 0);
			comp_output	: out std_logic);
end component;

component zerocomp5
	port ( a		: in std_logic_vector(4 downto 0);
			 zero	: out std_logic);
end component;

begin
	
	--Port Map
	comparator1 : comp5 port map(IFIDrt, IDEXrt, same1);
	comparator2 : comp5 port map(IDEXrt, IFIDrs, same2);
	nonzero1		: zerocomp5 port map(IDEXrt, NZ1);
	
	--Concurrent Signal Assignment
	stall <= NZ1 and IDEXMemRead and (same1 or same2);
	
	--Output Driver
	PCWrite <= not(stall);
	IFIDWrite <= not(stall);
	IDEXFlush <= stall;
	
end structural;