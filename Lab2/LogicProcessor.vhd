library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicProcessor is port (
	input1	: in std_logic_vector(3 downto 0);
	input2	: in std_logic_vector(3 downto 0);
	operator	: in std_logic_vector(2 downto 0);
	output	: out std_logic_vector(3 downto 0)
);
end LogicProcessor;

architecture Structural of LogicProcessor is

begin
		with operator select
		output						<= "0000" when "111",
											"0000" when "000",
											"0000" when "001",
											"0000" when "010",
											"0000" when "100",
											input1 AND input2 when "110",
											input1 OR input2 when "101",
											input1 XOR input2 when "011";
end architecture Structural;