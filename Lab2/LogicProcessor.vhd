library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicProcessor is port (
	input1		: in std_logic_vector(3 downto 0);			-- 4-bit input from one operand
	input2		: in std_logic_vector(3 downto 0);			-- 4-bit input from other operand
	operator	: in std_logic_vector(2 downto 0);			-- inputs from push buttons 0-2
	output		: out std_logic_vector(3 downto 0)			-- 4-bit output
);
end LogicProcessor;

architecture Structural of LogicProcessor is

begin
	with operator select
	output							<=  input1 AND input2 when "110",		-- output the AND of both inputs
										input1 OR input2 when "101",		-- output the OR of both inputs
										input1 XOR input2 when "011",		-- output the XOR of both inputs
										"0000" when others;					-- invalid state, turn off all LEDs
end architecture Structural;