library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--define inputs and outputs
entity MUX is port (
	input		: in std_logic_vector(3 downto 0);
	sum		: in std_logic_vector(3 downto 0);
	selector	: in std_logic;
	output	: out std_logic_vector(3 downto 0)
);
end MUX;

architecture Structural of MUX is

begin
	with selector select
	output							<= input when '1',
											sum when '0';
end architecture Structural;