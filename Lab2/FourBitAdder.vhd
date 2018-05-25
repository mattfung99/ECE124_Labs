library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FourBitAdder is port(
		input1	: in std_logic_vector(3 downto 0);
		input2	: in std_logic_vector(3 downto 0);
		sum		: out std_logic_vector(7 downto 0)
);
end FourBitAdder;

architecture Structural of FourBitAdder is

begin
		sum <= std_logic_vector(unsigned("0000" & input1)+unsigned("0000" & input2));
end architecture Structural;