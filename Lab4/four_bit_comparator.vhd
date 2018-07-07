<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity four_bit_comparator is port (
	A0		: in std_logic;
	A1		: in std_logic;
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
	A				: in std_logic;
	B				: in std_logic;
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end component;

signal zeroGT		: std_logic;
signal zeroLT		: std_logic;
signal zeroEQ		: std_logic;
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
	INST1: one_bit_comparator port map(A0, B0, zeroGT, zeroLT, zeroEQ);
	INST2: one_bit_comparator port map(A1, B1, oneGT, oneLT, oneEQ);
	INST3: one_bit_comparator port map(A2, B2, twoGT, twoLT, twoEQ);
	INST4: one_bit_comparator port map(A3, B3, threeGT, threeLT, threeEQ);
	AEQB <= (zeroEQ AND oneEQ AND twoEQ AND threeEQ);
	AGTB <= threeGT OR (threeEQ AND twoGT) OR (threeEQ AND twoEQ AND oneGT) OR (threeEQ AND twoEQ AND oneEQ AND zeroGT);
	ALTB <= threeLT OR (threeEQ AND twoLT) OR (threeEQ AND twoEQ AND oneLT) OR (threeEQ AND twoEQ AND oneEQ AND zeroLT);
=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity four_bit_comparator is port (
	A0		: in std_logic;
	A1		: in std_logic;
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
	A				: in std_logic;
	B				: in std_logic;
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end component;

signal zeroGT		: std_logic;
signal zeroLT		: std_logic;
signal zeroEQ		: std_logic;
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
	INST1: one_bit_comparator port map(A0, B0, zeroGT, zeroLT, zeroEQ);
	INST2: one_bit_comparator port map(A1, B1, oneGT, oneLT, oneEQ);
	INST3: one_bit_comparator port map(A2, B2, twoGT, twoLT, twoEQ);
	INST4: one_bit_comparator port map(A3, B3, threeGT, threeLT, threeEQ);
	AEQB <= (zeroEQ AND oneEQ AND twoEQ AND threeEQ);
	AGTB <= threeGT OR (threeEQ AND twoGT) OR (threeEQ AND twoEQ AND oneGT) OR (threeEQ AND twoEQ AND oneEQ AND zeroGT);
	ALTB <= threeLT OR (threeEQ AND twoLT) OR (threeEQ AND twoEQ AND oneLT) OR (threeEQ AND twoEQ AND oneEQ AND zeroLT);
>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
end architecture Structural;