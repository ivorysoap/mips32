--EX/M buffer for pipelined processor.  Holds 102 datapath bits + 5 controlpath bits = 107 total bits.

library ieee;
use ieee.std_logic_1164.all;

entity EXM is
	port(	clk			  : in std_logic;
			--WB Controlpath Signals
			i_RegWrite	  : in std_logic;
			i_MemtoReg	  : in std_logic;
			o_RegWrite	  : out std_logic;
			o_MemtoReg	  : out std_logic;
			--M Controlpath Signals
			i_MemWrite	  : in std_logic;
			i_MemRead	  : in std_logic;
			i_Branch		  : in std_logic;
			o_MemWrite	  : out std_logic;
			o_MemRead	  : out std_logic;
			o_Branch		  : out std_logic;
						
			--Datapath Signals
			i_aluresult	  : in std_logic_vector(31 downto 0);
			i_aluzero	  : in std_logic;
			i_writedata	  : in std_logic_vector(31 downto 0);
			i_destreg	  : in std_logic_vector(4 downto 0);
			o_aluresult	  : out std_logic_vector(31 downto 0);
			o_aluzero	  : out std_logic;
			o_writedata	  : out std_logic_vector(31 downto 0);
			o_destreg	  : out std_logic_vector(4 downto 0));
end EXM;

architecture behavioural of EXM is
begin
	
	--Sequential Signal Assignment
	process(clk)
	begin
		if rising_edge(clk) then
			--WB
			o_RegWrite <= i_RegWrite;
			o_MemtoReg <= i_MemtoReg;
			
			--M
			o_MemWrite <= i_MemWrite;
			o_MemRead <= i_MemRead;
			o_Branch <= i_Branch;
			
			--Datapath
			o_aluresult <= i_aluresult;
			o_aluzero <= i_aluzero;
			o_writedata <= i_writedata;
			o_destreg <= i_destreg;
		end if;
	end process;
	
end behavioural;