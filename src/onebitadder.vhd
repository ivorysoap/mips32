-------------------------------------------------------------------------------------------------------
-- Title         : 1-bit Adder
-- Project       : VHDL Synthesis Overview
-------------------------------------------------------------------------------
-- File          : oneBitAdder.vhd
-- Author        : Rami Abielmona  <rabielmo@site.uottawa.ca>
-- Created       : 2003/05/17
-- Last modified : 2007/09/25
-------------------------------------------------------------------------------
-- Description : This file creates a 1-bit binary full adder as defined in the VHDL
--		 Synthesis lecture.  The architecture is done at the RTL
--		 abstraction level and the implementation is done in structural
--		 VHDL.
-------------------------------------------------------------------------------
-- Modification history :
-- 2003.05.17 	R. Abielmona		Creation
-- 2004.09.22 	R. Abielmona		Ported for CEG 3550
-- 2007.09.25 	R. Abielmona		Modified copyright notice
-------------------------------------------------------------------------------
-- This file is copyright material of Rami Abielmona, Ph.D., P.Eng., Chief Research
-- Scientist at Larus Technologies.  Permission to make digital or hard copies of part
-- or all of this work for personal or classroom use is granted without fee
-- provided that copies are not made or distributed for profit or commercial
-- advantage and that copies bear this notice and the full citation of this work.
-- Prior permission is required to copy, republish, redistribute or post this work.
-- This notice is adapted from the ACM copyright notice.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY oneBitAdder IS
	PORT(
		i_CarryIn		: IN	STD_LOGIC;
		i_Ai, i_Bi		: IN	STD_LOGIC;
		o_Sum, o_CarryOut	: OUT	STD_LOGIC);
END oneBitAdder;

ARCHITECTURE rtl OF oneBitAdder IS
	SIGNAL int_CarryOut1, int_CarryOut2, int_CarryOut3: STD_LOGIC;

BEGIN

	-- Concurrent Signal Assignment
	int_CarryOut1 <= i_CarryIn xor i_Ai;
	int_CarryOut2 <= int_CarryOut1 and i_Bi;
	int_CarryOut3 <= i_CarryIn and i_Ai;

	-- Output Driver
	o_CarryOut <= int_CarryOut2 or int_CarryOut3;
	o_Sum <= i_CarryIn xor i_Ai xor i_Bi;

END rtl;
