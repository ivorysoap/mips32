--32-bit, 8-to-1 multiplexor defined in structural VHDL.

library IEEE;
use IEEE.std_Logic_1164.all;

entity mux8x1_32bit is
port ( a,b,c,d,e,f,g,h 		: in std_logic_vector(31 downto 0);
		 s							: in std_logic_vector(2 downto 0);
		 m							: out std_logic_vector(31 downto 0));
end mux8x1_32bit;

architecture structural of mux8x1_32bit is

signal m_buffer : std_logic_vector(31 downto 0);

	component mux8x1_1bit
	port(	
			a,b,c,d,e,f,g,h 			: in std_logic;
			s								: in std_logic_vector(2 downto 0);
			m								: out std_logic);
	end component;
	
begin
	
	
	mux31 : mux8x1_1bit port map(a(31), b(31), c(31), d(31), e(31), f(31), g(31), h(31), s, m_buffer(31));
	mux30 : mux8x1_1bit port map(a(30), b(30), c(30), d(30), e(30), f(30), g(30), h(30), s, m_buffer(30));
	mux29 : mux8x1_1bit port map(a(29), b(29), c(29), d(29), e(29), f(29), g(29), h(29), s, m_buffer(29));
	mux28 : mux8x1_1bit port map(a(28), b(28), c(28), d(28), e(28), f(28), g(28), h(28), s, m_buffer(28));
	mux27 : mux8x1_1bit port map(a(27), b(27), c(27), d(27), e(27), f(27), g(27), h(27), s, m_buffer(27));
	mux26 : mux8x1_1bit port map(a(26), b(26), c(26), d(26), e(26), f(26), g(26), h(26), s, m_buffer(26));
	mux25 : mux8x1_1bit port map(a(25), b(25), c(25), d(25), e(25), f(25), g(25), h(25), s, m_buffer(25));
	mux24 : mux8x1_1bit port map(a(24), b(24), c(24), d(24), e(24), f(24), g(24), h(24), s, m_buffer(24));
	mux23 : mux8x1_1bit port map(a(23), b(23), c(23), d(23), e(23), f(23), g(23), h(23), s, m_buffer(23));
	mux22 : mux8x1_1bit port map(a(22), b(22), c(22), d(22), e(22), f(22), g(22), h(22), s, m_buffer(22));
	mux21 : mux8x1_1bit port map(a(21), b(21), c(21), d(21), e(21), f(21), g(21), h(21), s, m_buffer(21));
	mux20 : mux8x1_1bit port map(a(20), b(20), c(20), d(20), e(20), f(20), g(20), h(20), s, m_buffer(20));
	mux19 : mux8x1_1bit port map(a(19), b(19), c(19), d(19), e(19), f(19), g(19), h(19), s, m_buffer(19));
	mux18 : mux8x1_1bit port map(a(18), b(18), c(18), d(18), e(18), f(18), g(18), h(18), s, m_buffer(18));
	mux17 : mux8x1_1bit port map(a(17), b(17), c(17), d(17), e(17), f(17), g(17), h(17), s, m_buffer(17));
	mux16 : mux8x1_1bit port map(a(16), b(16), c(16), d(16), e(16), f(16), g(16), h(16), s, m_buffer(16));
	mux15 : mux8x1_1bit port map(a(15), b(15), c(15), d(15), e(15), f(15), g(15), h(15), s, m_buffer(15));
	mux14 : mux8x1_1bit port map(a(14), b(14), c(14), d(14), e(14), f(14), g(14), h(14), s, m_buffer(14));
	mux13 : mux8x1_1bit port map(a(13), b(13), c(13), d(13), e(13), f(13), g(13), h(13), s, m_buffer(13));
	mux12 : mux8x1_1bit port map(a(12), b(12), c(12), d(12), e(12), f(12), g(12), h(12), s, m_buffer(12));
	mux11 : mux8x1_1bit port map(a(11), b(11), c(11), d(11), e(11), f(11), g(11), h(11), s, m_buffer(11));
	mux10 : mux8x1_1bit port map(a(10), b(10), c(10), d(10), e(10), f(10), g(10), h(10), s, m_buffer(10));
	mux9 : mux8x1_1bit port map(a(9), b(9), c(9), d(9), e(9), f(9), g(9), h(9), s, m_buffer(9));
	mux8 : mux8x1_1bit port map(a(8), b(8), c(8), d(8), e(8), f(8), g(8), h(8), s, m_buffer(8));
	mux7 : mux8x1_1bit port map(a(7), b(7), c(7), d(7), e(7), f(7), g(7), h(7), s, m_buffer(7));
	mux6 : mux8x1_1bit port map(a(6), b(6), c(6), d(6), e(6), f(6), g(6), h(6), s, m_buffer(6));
	mux5 : mux8x1_1bit port map(a(5), b(5), c(5), d(5), e(5), f(5), g(5), h(5), s, m_buffer(5));
	mux4 : mux8x1_1bit port map(a(4), b(4), c(4), d(4), e(4), f(4), g(4), h(4), s, m_buffer(4));
	mux3 : mux8x1_1bit port map(a(3), b(3), c(3), d(3), e(3), f(3), g(3), h(3), s, m_buffer(3));
	mux2 : mux8x1_1bit port map(a(2), b(2), c(2), d(2), e(2), f(2), g(2), h(2), s, m_buffer(2));
	mux1 : mux8x1_1bit port map(a(1), b(1), c(1), d(1), e(1), f(1), g(1), h(1), s, m_buffer(1));
	mux0 : mux8x1_1bit port map(a(0), b(0), c(0), d(0), e(0), f(0), g(0), h(0), s, m_buffer(0));
	
	--Output Driver
	m <= m_buffer(31) & m_buffer(30) & m_buffer(29) & m_buffer(28) & m_buffer(27) & m_buffer(26) & m_buffer(25) & m_buffer(24) & m_buffer(23) & m_buffer(22) & m_buffer(21) & m_buffer(20) & m_buffer(19) & m_buffer(18) & m_buffer(17) & m_buffer(16) & m_buffer(15) & m_buffer(14) & m_buffer(13) & m_buffer(12) & m_buffer(11) & m_buffer(10) & m_buffer(9) & m_buffer(8) & m_buffer(7) & m_buffer(6) & m_buffer(5) & m_buffer(4) & m_buffer(3) & m_buffer(2) & m_buffer(1) & m_buffer(0);
	
	
	
	
end structural;
