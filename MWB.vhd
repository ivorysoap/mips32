--M/WB buffer for pipelined processor.  Holds 69 datapath bits + 2 controlpath bits = 71 total bits.

library ieee;
use ieee.std_logic_1164.all;

entity MWB is
	port(	clk			  : in std_logic;
			--WB Controlpath Signals
			i_RegWrite	  : in std_logic;
			i_MemtoReg	  : in std_logic;
			o_RegWrite	  : out std_logic;
			o_MemtoReg	  : out std_logic;
						
			--Datapath Signals
			i_memout		  : in std_logic_vector(31 downto 0);
			i_aluresult	  : in std_logic_vector(31 downto 0);
			i_destreg	  : in std_logic_vector(4 downto 0);
			o_memout		  : out std_logic_vector(31 downto 0);
			o_aluresult	  : out std_logic_vector(31 downto 0);
			o_destreg	  : out std_logic_vector(4 downto 0));
end MWB;

architecture behavioural of MWB is
begin
	
	--Sequential Signal Assignment
	process(clk)
	begin
		if rising_edge(clk) then
			--WB
			o_RegWrite <= i_RegWrite;
			o_MemtoReg <= i_MemtoReg;
			
			
			--Datapath
			o_memout <= i_memout;
			o_aluresult <= i_aluresult;
			o_destreg <= i_destreg;
		end if;
	end process;
	
end behavioural;