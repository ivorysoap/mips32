--ID/EX buffer for pipelined processor.

library ieee;
use ieee.std_logic_1164.all;

entity IDEX is
	port(	clk			  : in std_logic;
			i_a		 	  : in std_logic_vector(31 downto 0);
			i_b		 	  : in std_logic_vector(31 downto 0);
			o_a 	 		  : out std_logic_vector(31 downto 0);
			o_b 	 		  : out std_logic_vector(31 downto 0));
end IDEX;

architecture structural of IDEX is
signal vcc, gnd : std_logic;

--Component List
	component reg32
		port(	d 		: in std_logic_vector(31 downto 0);
				en		: in std_logic;
				clr	: in std_logic;
				clk	: in std_logic;
				q		: out std_logic_vector(31 downto 0));
	end component;

begin

	--Concurrent Signal Assignment
	vcc <= '1';
	gnd <= '0';

	--Port Map
	pcreg  : reg32 port map(i_pcplus4, vcc, gnd, clk, o_pcplus4);
	insreg : reg32 port map(i_instruction, vcc, gnd, clk, o_pcplus4);
	
end structural;