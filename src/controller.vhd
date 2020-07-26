--MIPS32 control unit.  
--Takes 6-bit opcode and decodes it into respective instruction types (R-type, lw, sw, beq, or j).

library ieee;
use ieee.std_logic_1164.all;

entity controller is
	port(	Opcode : in std_logic_vector(5 downto 0);
			--Control Signals (Output)
			RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump : out std_logic;
			ALUOp : out std_logic_vector(1 downto 0));
end controller;

architecture structural of controller is
--Instruction Type Signals
signal R, lw, sw, beq, j : std_logic;
begin

	--Concurrent Signal Assignment
	R <= not(Opcode(5)) and not(Opcode(4)) and not(Opcode(3)) and not(Opcode(2)) and not(Opcode(1)) and not(Opcode(0));
	lw <= (Opcode(5)) and not(Opcode(4)) and not(Opcode(3)) and not(Opcode(2)) and (Opcode(1)) and (Opcode(0));
	sw <= (Opcode(5)) and not(Opcode(4)) and (Opcode(3)) and not(Opcode(2)) and (Opcode(1)) and (Opcode(0));
	beq <= not(Opcode(5)) and not(Opcode(4)) and not(Opcode(3)) and (Opcode(2)) and not(Opcode(1)) and not(Opcode(0));
	j <= not(Opcode(5)) and not(Opcode(4)) and not(Opcode(3)) and not(Opcode(2)) and (Opcode(1)) and not(Opcode(0));
	
	--Output Drivers
	RegDst <= R;
	ALUSrc <= lw or sw;
	MemtoReg <= lw;
	RegWrite <= R or lw;
	MemRead <= lw;
	MemWrite <= sw;
	Branch <= beq;
	Jump <= j;
	ALUOp(1) <= R;
	ALUOp(0) <= beq;

end structural;