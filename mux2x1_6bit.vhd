--6-bit, 2-to-1 multiplexor defined in structural VHDL.
library IEEE;
use IEEE.std_Logic_1164.all;

entity mux2x1_6bit is
port ( a,b 		: in std_logic_vector(5 downto 0);
		 s			: in std_logic;
		 m			: out std_logic_vector(5 downto 0));
end mux2x1_6bit;

architecture structural of mux2x1_6bit is

signal m_buffer : std_logic_vector(5 downto 0);


	component mux2x1_1bit
	port(	
			a,b		: in std_logic;
			s			: in std_logic;
			m			: out std_logic);
	end component;
	
begin
	
	mux5 : mux2x1_1bit port map(a(5), b(5), s, m_buffer(5));
	mux4 : mux2x1_1bit port map(a(4), b(4), s, m_buffer(4));
	mux3 : mux2x1_1bit port map(a(3), b(3), s, m_buffer(3));
	mux2 : mux2x1_1bit port map(a(2), b(2), s, m_buffer(2));
	mux1 : mux2x1_1bit port map(a(1), b(1), s, m_buffer(1));
	mux0 : mux2x1_1bit port map(a(0), b(0), s, m_buffer(0));
	
	--Output Driver
	m <= m_buffer(5) & m_buffer(4) & m_buffer(3) & m_buffer(2) & m_buffer(1) & m_buffer(0);
	
	
	
	
end structural;
