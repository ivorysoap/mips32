--2-bit, 4-to-1 multiplexor defined in structural VHDL.
library IEEE;
use IEEE.std_Logic_1164.all;

entity mux4x1_2bit is
	port ( a,b,c,d 		: in std_logic_vector(1 downto 0);
			 s					: in std_logic_vector(1 downto 0);
			 m					: out std_logic_vector(1 downto 0));
end mux4x1_2bit;

architecture structural of mux4x1_2bit is
signal m_buffer : std_logic_vector(1 downto 0);

component mux4x1_1bit
port ( a,b,c,d 		: in std_logic;
		 s					: in std_logic_vector(1 downto 0);
		 m					: out std_logic);
end component;

begin
	
--Port Map
mux1 : mux4x1_1bit port map(a(1), b(1), c(1), d(1), s, m_buffer(1));
mux0 : mux4x1_1bit port map(a(0), b(0), c(0), d(0), s, m_buffer(0));
	
--Output Driver
m <= m_buffer;	
	
end structural;
