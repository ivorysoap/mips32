--MIPS32 main ALU control unit.  
--Takes 5-bit 'funct' field as well as 2-bit ALUOp signal from main controller.  Output is the ALU's control signal.

library ieee;
use ieee.std_logic_1164.all;

entity alu_controller is
	port(		funct : in std_logic_vector(5 downto 0);
				ALUOp : in std_logic_vector(1 downto 0);
				Op		: out std_logic_vector(2 downto 0));
end alu_controller;

architecture structural of alu_controller is
begin

	--Output Driver
	Op(2) <= (ALUOp(0) or (ALUOp(1) and funct(1)));
	Op(1) <= (not(ALUOp(1)) or not(funct(2)));
	Op(0) <= (ALUOp(1) and (funct(3) or funct(0)));
	
end structural;