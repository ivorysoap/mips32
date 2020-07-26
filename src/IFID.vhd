--IF/ID buffer for pipelined processor.

library ieee;
use ieee.std_logic_1164.all;

entity IFID is
	port(	clk			  : in std_logic;
			en				  : in std_logic;
			flush			  : in std_logic;
			i_pc4		 	  : in std_logic_vector(31 downto 0);
			i_ins			  : in std_logic_vector(31 downto 0);
			o_pc4 		  : out std_logic_vector(31 downto 0);
			o_ins		     : out std_logic_vector(31 downto 0));
end IFID;

architecture structural of IFID is
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


	--Port Map
	pcreg  : reg32 port map(i_pc4, en, flush, clk, o_pc4);
	insreg : reg32 port map(i_ins, en, flush, clk, o_pc4);
	
end structural;