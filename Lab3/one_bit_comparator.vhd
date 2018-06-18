library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity one_bit_comparator is port (
	A				: in std_logic;		-- Here we defined our inputs and outputs for our one_bit_comparator
	B				: in std_logic;		-- Each input and output corresponds to the inputs and outputs given to us in the diagram in the manual
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end one_bit_comparator;

architecture Structural of one_bit_comparator is

signal ANEQB		: std_logic;		-- Here we created a new variable that we will use later on for giving off signals to the LEDS and CLK for functionality
										-- ANEQB stands for A NOT equal to B

begin 
		AEQB <= A XNOR B;				-- Here we defined our variables for our one_bit_comparator
		ANEQB <= A XOR B;				-- Each Variable is defined as a logical gate with two inputs 
		AGTB <= A AND ANEQB;
		ALTB <= B AND ANEQB;

end architecture Structural;