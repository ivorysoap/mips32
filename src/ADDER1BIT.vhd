--1-bit full adder defined in structural VHDL.
library ieee;
use ieee.std_logic_1164.all;

entity ADDER1BIT is
  port(   a, b, cin   : in std_logic;
          sum, cout   : out std_logic);
end ADDER1BIT;

architecture structural of ADDER1BIT is
signal int_1, int_2 : std_logic;
begin

      --Concurrent Signal Assignment
      int_1 <= a xor b;
      int_2 <= a and b;

      --Output Driver
      sum <= int_1 xor cin;
      cout <= (int_1 and cin) or int_2;

end structural;
