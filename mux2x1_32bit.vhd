--32-bit, 2-to-1 multiplexor defined in structural VHDL.
library IEEE;
use IEEE.std_Logic_1164.all;

entity mux2x1_32bit is
port ( a,b 		: in std_logic_vector(31 downto 0);
		 s			: in std_logic;
		 m			: out std_logic_vector(31 downto 0));
end mux2x1_32bit;

architecture structural of mux2x1_32bit is

signal m_buffer : std_logic_vector(31 downto 0);


	component mux2x1_1bit
	port(	
			a,b		: in std_logic;
			s					: in std_logic;
			m					: out std_logic);
	end component;
	
begin
	
	
	mux31 : mux2x1_1bit port map(a(31), b(31), s, m_buffer(31));
	mux30 : mux2x1_1bit port map(a(30), b(30), s, m_buffer(30));
	mux29 : mux2x1_1bit port map(a(29), b(29), s, m_buffer(29));
	mux28 : mux2x1_1bit port map(a(28), b(28), s, m_buffer(28));
	mux27 : mux2x1_1bit port map(a(27), b(27), s, m_buffer(27));
	mux26 : mux2x1_1bit port map(a(26), b(26), s, m_buffer(26));
	mux25 : mux2x1_1bit port map(a(25), b(25), s, m_buffer(25));
	mux24 : mux2x1_1bit port map(a(24), b(24), s, m_buffer(24));
	mux23 : mux2x1_1bit port map(a(23), b(23), s, m_buffer(23));
	mux22 : mux2x1_1bit port map(a(22), b(22), s, m_buffer(22));
	mux21 : mux2x1_1bit port map(a(21), b(21), s, m_buffer(21));
	mux20 : mux2x1_1bit port map(a(20), b(20), s, m_buffer(20));
	mux19 : mux2x1_1bit port map(a(19), b(19), s, m_buffer(19));
	mux18 : mux2x1_1bit port map(a(18), b(18), s, m_buffer(18));
	mux17 : mux2x1_1bit port map(a(17), b(17), s, m_buffer(17));
	mux16 : mux2x1_1bit port map(a(16), b(16), s, m_buffer(16));
	mux15 : mux2x1_1bit port map(a(15), b(15), s, m_buffer(15));
	mux14 : mux2x1_1bit port map(a(14), b(14), s, m_buffer(14));
	mux13 : mux2x1_1bit port map(a(13), b(13), s, m_buffer(13));
	mux12 : mux2x1_1bit port map(a(12), b(12), s, m_buffer(12));
	mux11 : mux2x1_1bit port map(a(11), b(11), s, m_buffer(11));
	mux10 : mux2x1_1bit port map(a(10), b(10), s, m_buffer(10));
	mux9 : mux2x1_1bit port map(a(9), b(9), s, m_buffer(9));
	mux8 : mux2x1_1bit port map(a(8), b(8), s, m_buffer(8));
	mux7 : mux2x1_1bit port map(a(7), b(7), s, m_buffer(7));
	mux6 : mux2x1_1bit port map(a(6), b(6), s, m_buffer(6));
	mux5 : mux2x1_1bit port map(a(5), b(5), s, m_buffer(5));
	mux4 : mux2x1_1bit port map(a(4), b(4), s, m_buffer(4));
	mux3 : mux2x1_1bit port map(a(3), b(3), s, m_buffer(3));
	mux2 : mux2x1_1bit port map(a(2), b(2), s, m_buffer(2));
	mux1 : mux2x1_1bit port map(a(1), b(1), s, m_buffer(1));
	mux0 : mux2x1_1bit port map(a(0), b(0), s, m_buffer(0));
	
	--Output Driver
	m <= m_buffer(31) & m_buffer(30) & m_buffer(29) & m_buffer(28) & m_buffer(27) & m_buffer(26) & m_buffer(25) & m_buffer(24) & m_buffer(23) & m_buffer(22) & m_buffer(21) & m_buffer(20) & m_buffer(19) & m_buffer(18) & m_buffer(17) & m_buffer(16) & m_buffer(15) & m_buffer(14) & m_buffer(13) & m_buffer(12) & m_buffer(11) & m_buffer(10) & m_buffer(9) & m_buffer(8) & m_buffer(7) & m_buffer(6) & m_buffer(5) & m_buffer(4) & m_buffer(3) & m_buffer(2) & m_buffer(1) & m_buffer(0);
	
	
	
	
end structural;
