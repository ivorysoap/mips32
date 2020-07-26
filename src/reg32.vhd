--32-bit register.

library ieee;
use ieee.std_logic_1164.all;

entity reg32 is
	port(	d 		: in std_logic_vector(31 downto 0);
			en		: in std_logic;
			clr	: in std_logic;
			clk	: in std_logic;
			q		: out std_logic_vector(31 downto 0));
end reg32;

architecture behavioural of reg32 is
begin

	process(clk,clr)
	begin
		if clr = '1' then --active-high reset
			q <= (others => '0'); --set q to all zeroes on reset
		elsif rising_edge(clk) then
			if en = '1' then
				q <= d;
			end if;
		end if;
	end process;
end behavioural;