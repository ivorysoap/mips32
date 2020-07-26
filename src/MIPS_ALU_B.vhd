--32-bit MIPS ALU, implemented in behavioural VHDL.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.ALL;

entity MIPS_ALU_B is
  port( a       : in std_logic_vector(31 downto 0);
        b       : in std_logic_vector(31 downto 0);
        op      : in std_logic_vector(2 downto 0);
        result  : out std_logic_vector(31 downto 0);
        zero    : out std_logic;
        cout    : out std_logic);
end MIPS_ALU_B;

architecture behavioural of MIPS_ALU_B is
signal and_result, or_result, add_result, sub_result, slt_result : std_logic_vector(31 downto 0);
signal result_int	: std_logic_vector(31 downto 0); --intermediate result signal
signal zero_int : std_logic; --intermediate zero signal
begin

  --Concurrent Signal assignment
  and_result <= a and b;
  or_result <= a or b;
  add_result <= a + b;
  sub_result <= a - b;
  slt_result <= (others => '0') when a > b else
					 (31 downto 1 => '0',
                 others      => '1');

	
	with op select
		result_int <= and_result when "000",
                  or_result  when "001",
                  add_result when "010",
                  sub_result when "110",
                  slt_result when "111",
						"00000000000000000000000000000000" when others;

  zero_int <= '1' when result_int = "00000000000000000000000000000000" else
					'0';

  --Output Driver
  result <= result_int;
  zero <= zero_int;

end behavioural;
