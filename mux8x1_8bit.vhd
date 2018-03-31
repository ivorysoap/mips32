--8-bit, 8-to-1 multiplexor defined in structural VHDL.

library ieee;
use ieee.std_logic_1164.all;

entity mux8x1_8bit is
	port(	a,b,c,d,e,f,g,h : in std_logic_vector(7 downto 0);
			s					 : in std_logic_vector(2 downto 0);
			m					 : out std_logic_vector(7 downto 0));
end mux8x1_8bit;

architecture structural of mux8x1_8bit is

signal m_buffer : std_logic_vector(7 downto 0);

component mux8x1_1bit
	port ( a,b,c,d,e,f,g,h 		: in std_logic;
			s							: in std_logic_vector(2 downto 0);
			m							: out std_logic);
end component;

begin

	--Port Maps
	mux7 : mux8x1_1bit port map(a(7), b(7), c(7), d(7), e(7), f(7), g(7), h(7), s, m_buffer(7));
	mux6 : mux8x1_1bit port map(a(6), b(6), c(6), d(6), e(6), f(6), g(6), h(6), s, m_buffer(6));
	mux5 : mux8x1_1bit port map(a(5), b(5), c(5), d(5), e(5), f(5), g(5), h(5), s, m_buffer(5));
	mux4 : mux8x1_1bit port map(a(4), b(4), c(4), d(4), e(4), f(4), g(4), h(4), s, m_buffer(4));
	mux3 : mux8x1_1bit port map(a(3), b(3), c(3), d(3), e(3), f(3), g(3), h(3), s, m_buffer(3));
	mux2 : mux8x1_1bit port map(a(2), b(2), c(2), d(2), e(2), f(2), g(2), h(2), s, m_buffer(2));
	mux1 : mux8x1_1bit port map(a(1), b(1), c(1), d(1), e(1), f(1), g(1), h(1), s, m_buffer(1));
	mux0 : mux8x1_1bit port map(a(0), b(0), c(0), d(0), e(0), f(0), g(0), h(0), s, m_buffer(0));
	
	--Output Driver
	m <= m_buffer(7) & m_buffer(6) & m_buffer(5) & m_buffer(4) & m_buffer(3) & m_buffer(2) & m_buffer(1) & m_buffer(0);
	
end structural;