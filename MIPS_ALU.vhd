--32-bit MIPS ALU, implemented in structural VHDL.
library IEEE;
use IEEE.std_logic_1164.all;

entity MIPS_ALU is
  port( a       : in std_logic_vector(31 downto 0);
        b       : in std_logic_vector(31 downto 0);
        op      : in std_logic_vector(2 downto 0);
        result  : out std_logic_vector(31 downto 0);
        zero    : out std_logic;
        cout    : out std_logic);
end MIPS_ALU;

architecture structural of MIPS_ALU is

signal mux_and, mux_or, mux_arith, mux_slt							: std_logic_vector(31 downto 0);  --Multiplexor input signals
signal int_out				                    							: std_logic_vector(31 downto 0); --Intermediate output signal
signal int_zero				                    						: std_logic; 							--Intermediate zero signal
signal not_b                               							: std_logic_vector(31 downto 0); --not(b)
signal adderOperandB, adderOutput, incrementorOutput           : std_logic_vector(31 downto 0); --second operand of adder; differentiates addition or subtraction

component and2_32bit
  port ( a,b 		: in std_logic_vector(31 downto 0);
		     o	   	: out std_logic_vector(31 downto 0));
end component;

component or2_32bit
  port( a,b   : in std_logic_vector(31 downto 0);
        o     : out std_logic_vector(31 downto 0));
end component;

component ADDER32BITS_B
  port( a, b		: IN	STD_LOGIC_VECTOR(31 downto 0);
        sum			: OUT	STD_LOGIC_VECTOR(31 downto 0));
end component;

component mux4x1_32bit
  port ( a,b,c,d 		: in std_logic_vector(31 downto 0);
         s					: in std_logic_vector(1 downto 0);
         m					: out std_logic_vector(31 downto 0));
end component;

component mux2x1_32bit
  port ( a,b 		: in std_logic_vector(31 downto 0);
		     s			: in std_logic;
		     m			: out std_logic_vector(31 downto 0));
end component;

component not_32bit
  port ( a 		: in std_logic_vector(31 downto 0);
		     o		: out std_logic_vector(31 downto 0));
end component;

component zerocomp32
  port ( a		: in std_logic_vector(31 downto 0);
		     zero	: out std_logic);
end component;

component sltextend
  port(	i : in std_logic;
        o : out std_logic_vector(31 downto 0));
end component;

begin

--Port Map

and_unit 	: and2_32bit port map(a, b, mux_and);
or_unit  	: or2_32bit port map(a, b, mux_or);
not_unit 	: not_32bit port map(b, not_b);
b_mux    	: mux2x1_32bit port map(b, not_b, op(2), adderOperandB);
adder    	: ADDER32BITS_B port map(a, adderOperandB, adderOutput);
incrementor	: ADDER32BITS_B port map(adderOutput, "00000000000000000000000000000001", incrementorOutput);
inc_mux		: mux2x1_32bit port map(adderOutput, incrementorOutput, op(2), mux_arith);
zerocomp		: zerocomp32 port map(int_out, int_zero);
--SLT OPERATIONS NOT YET IMPLEMENTED

mux      : mux4x1_32bit port map(mux_and, mux_or, mux_arith, mux_slt, op(1 downto 0), int_out);

--Output Driver
result <= int_out;
zero <= int_zero;
cout <= '0';

end structural;
