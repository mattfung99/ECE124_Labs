library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FourBitAdder is port(
		input1	: in std_logic_vector(3 downto 0);		-- 4-bit input from one operand
		input2	: in std_logic_vector(3 downto 0);		-- 4-bit input form other operand
		sum		: out std_logic_vector(7 downto 0)		-- 8-bit output of sum of operands
);
end FourBitAdder;

architecture Structural of FourBitAdder is

begin
		sum <= std_logic_vector(unsigned("0000" & input1)+unsigned("0000" & input2));			-- concatenate 4 zeros to the beginning of each input, convert to unsigned integers,
																								-- add them together, convert back to std_logic_vector, and output the result
end architecture Structural;