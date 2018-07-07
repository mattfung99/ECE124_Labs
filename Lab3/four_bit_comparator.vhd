<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity four_bit_comparator is port (
	A0		: in std_logic;				-- Here we defined our inputs and outputs for our four_bit_comparator
	A1		: in std_logic;				-- Each input and output corresponds to the inputs and outputs given to us in the diagram in the manual
	A2		: in std_logic;
	A3		: in std_logic;
	B0		: in std_logic;
	B1		: in std_logic;
	B2		: in std_logic;
	B3		: in std_logic;
	AGTB	: out std_logic;
	ALTB	: out std_logic;
	AEQB	: out std_logic
);
end four_bit_comparator;

architecture Structural of four_bit_comparator is

component one_bit_comparator port (
	A				: in std_logic;		-- In order to make our four_bit_comparator work, we had to include the components of the one_bit_comparator
	B				: in std_logic;		-- We simply defined all the inputs and ouputs from the one_bit_comparator.vhd file so that we can utilize that file here
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end component;

signal zeroGT		: std_logic;		-- Here we created new variables that we will use later on for giving off signals to the LEDS and CLK for functionality
signal zeroLT		: std_logic;		-- We created 3 variables for each LED (There are 4 LEDS numbered from 0 to 3)
signal zeroEQ		: std_logic;		-- GT, LT, EQ represent (Greater Than, Less Than, Equal To)
signal oneGT		: std_logic;
signal oneLT		: std_logic;
signal oneEQ		: std_logic;
signal twoGT		: std_logic;
signal twoLT		: std_logic;
signal twoEQ		: std_logic;
signal threeGT		: std_logic;
signal threeLT		: std_logic;
signal threeEQ		: std_logic;

begin

	INST1: one_bit_comparator port map(A0, B0, zeroGT, zeroLT, zeroEQ);										-- maps inputs A0 & B0 to the signals zeroGT, zeroLT, & zeroEQ for display on the board
	INST2: one_bit_comparator port map(A1, B1, oneGT, oneLT, oneEQ);										-- maps inputs A1 & B1 to the signals oneGT, oneLT, & oneEQ for display on the board
	INST3: one_bit_comparator port map(A2, B2, twoGT, twoLT, twoEQ);										-- maps inputs A2 & B2 to the signals twoGT, twoLT, & twoEQ for display on the board
	INST4: one_bit_comparator port map(A3, B3, threeGT, threeLT, threeEQ);									-- maps inputs A3 & B3 to the signals threeGT, threeLT, & threeEQ for display on the board
	AEQB <= (zeroEQ AND oneEQ AND twoEQ AND threeEQ);														-- Displays A is equal to B only when this conditional is met
	AGTB <= threeGT OR (threeEQ AND twoGT) OR (threeEQ AND twoEQ AND oneGT) OR (threeEQ AND twoEQ AND oneEQ AND zeroGT);	-- Displays A is greater than B only when this conditional is met
	ALTB <= threeLT OR (threeEQ AND twoLT) OR (threeEQ AND twoEQ AND oneLT) OR (threeEQ AND twoEQ AND oneEQ AND zeroLT);	-- Displays A is less than B only when this conditional is met

=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity four_bit_comparator is port (
	A0		: in std_logic;				-- Here we defined our inputs and outputs for our four_bit_comparator
	A1		: in std_logic;				-- Each input and output corresponds to the inputs and outputs given to us in the diagram in the manual
	A2		: in std_logic;
	A3		: in std_logic;
	B0		: in std_logic;
	B1		: in std_logic;
	B2		: in std_logic;
	B3		: in std_logic;
	AGTB	: out std_logic;
	ALTB	: out std_logic;
	AEQB	: out std_logic
);
end four_bit_comparator;

architecture Structural of four_bit_comparator is

component one_bit_comparator port (
	A				: in std_logic;		-- In order to make our four_bit_comparator work, we had to include the components of the one_bit_comparator
	B				: in std_logic;		-- We simply defined all the inputs and ouputs from the one_bit_comparator.vhd file so that we can utilize that file here
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end component;

signal zeroGT		: std_logic;		-- Here we created new variables that we will use later on for giving off signals to the LEDS and CLK for functionality
signal zeroLT		: std_logic;		-- We created 3 variables for each LED (There are 4 LEDS numbered from 0 to 3)
signal zeroEQ		: std_logic;		-- GT, LT, EQ represent (Greater Than, Less Than, Equal To)
signal oneGT		: std_logic;
signal oneLT		: std_logic;
signal oneEQ		: std_logic;
signal twoGT		: std_logic;
signal twoLT		: std_logic;
signal twoEQ		: std_logic;
signal threeGT		: std_logic;
signal threeLT		: std_logic;
signal threeEQ		: std_logic;

begin

	INST1: one_bit_comparator port map(A0, B0, zeroGT, zeroLT, zeroEQ);										-- maps inputs A0 & B0 to the signals zeroGT, zeroLT, & zeroEQ for display on the board
	INST2: one_bit_comparator port map(A1, B1, oneGT, oneLT, oneEQ);										-- maps inputs A1 & B1 to the signals oneGT, oneLT, & oneEQ for display on the board
	INST3: one_bit_comparator port map(A2, B2, twoGT, twoLT, twoEQ);										-- maps inputs A2 & B2 to the signals twoGT, twoLT, & twoEQ for display on the board
	INST4: one_bit_comparator port map(A3, B3, threeGT, threeLT, threeEQ);									-- maps inputs A3 & B3 to the signals threeGT, threeLT, & threeEQ for display on the board
	AEQB <= (zeroEQ AND oneEQ AND twoEQ AND threeEQ);														-- Displays A is equal to B only when this conditional is met
	AGTB <= threeGT OR (threeEQ AND twoGT) OR (threeEQ AND twoEQ AND oneGT) OR (threeEQ AND twoEQ AND oneEQ AND zeroGT);	-- Displays A is greater than B only when this conditional is met
	ALTB <= threeLT OR (threeEQ AND twoLT) OR (threeEQ AND twoEQ AND oneLT) OR (threeEQ AND twoEQ AND oneEQ AND zeroLT);	-- Displays A is less than B only when this conditional is met

>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
end architecture Structural;