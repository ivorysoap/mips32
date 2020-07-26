--ID/EX buffer for pipelined processor.  Holds 138 datapath bits + 9 controlpath bits = 147 total bits.

library ieee;
use ieee.std_logic_1164.all;

entity IDEX is
	port(	clk			  : in std_logic;
			flush			  : in std_logic;
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
			--EX Controlpath Signals
			i_RegDst		  : in std_logic;
			i_ALUOp		  : in std_logic_vector(1 downto 0);
			i_ALUSrc		  : in std_logic;		
			o_RegDst		  : out std_logic;
			o_ALUOp		  : out std_logic_vector(1 downto 0);
			o_ALUSrc		  : out std_logic;
			
			--Datapath Signals
			i_pc4			  : in std_logic_vector(31 downto 0);
			i_a		 	  : in std_logic_vector(31 downto 0);
			i_b		 	  : in std_logic_vector(31 downto 0);
			i_signext	  : in std_logic_vector(31 downto 0);
			i_rt			  : in std_logic_vector(4 downto 0);
			i_rd			  : in std_logic_vector(4 downto 0);
			o_pc4			  : out std_logic_vector(31 downto 0);
			o_a 	 		  : out std_logic_vector(31 downto 0);
			o_b 	 		  : out std_logic_vector(31 downto 0);
			o_signext	  : out std_logic_vector(31 downto 0);
			o_rt			  : out std_logic_vector(4 downto 0);
			o_rd			  : out std_logic_vector(4 downto 0));
end IDEX;

architecture behavioural of IDEX is
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
			
			--EX
			o_RegDst <= i_RegDst;
			o_ALUOp <= i_ALUOp;
			o_ALUSrc <= i_ALUSrc;
			
			--Datapath
			o_pc4 <= i_pc4;
			o_a <= i_a;
			o_b <= i_b;
			o_signext <= i_signext;
			o_rt <= i_rt;
			o_rd <= i_rd;
		end if;
	end process;
	
end behavioural;