<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--define inputs and outputs
entity MUX is port (
	input		: in std_logic_vector(7 downto 0);		-- 8 bit input from operands 
	sum			: in std_logic_vector(7 downto 0);		-- 8 bit input for arithmetic sum 
	selector	: in std_logic_vector(0 downto 0);		-- 1 bit selector that allows different inputs to pass through based on buttons clicked
	output		: out std_logic_vector(7 downto 0)		-- 8 bit output 
);
end MUX;

architecture Structural of MUX is

begin
	with selector select
	output						<=  input when "1",		-- Output becomes an input when the received value from output is 1
									sum when "0";		-- The output will be summed when the received value from output is 0
=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--define inputs and outputs
entity MUX is port (
	input		: in std_logic_vector(7 downto 0);		-- 8 bit input from operands 
	sum			: in std_logic_vector(7 downto 0);		-- 8 bit input for arithmetic sum 
	selector	: in std_logic_vector(0 downto 0);		-- 1 bit selector that allows different inputs to pass through based on buttons clicked
	output		: out std_logic_vector(7 downto 0)		-- 8 bit output 
);
end MUX;

architecture Structural of MUX is

begin
	with selector select
	output						<=  input when "1",		-- Output becomes an input when the received value from output is 1
									sum when "0";		-- The output will be summed when the received value from output is 0
>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
end architecture Structural;