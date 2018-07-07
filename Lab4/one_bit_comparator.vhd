<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity one_bit_comparator is port (
	A				: in std_logic;
	B				: in std_logic;
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end one_bit_comparator;

architecture Structural of one_bit_comparator is

signal ANEQB		: std_logic;

begin 
		AEQB <= A XNOR B;
		ANEQB <= A XOR B;
		AGTB <= A AND ANEQB;
		ALTB <= B AND ANEQB;
=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity one_bit_comparator is port (
	A				: in std_logic;
	B				: in std_logic;
	AGTB			: out std_logic;
	ALTB			: out std_logic;
	AEQB			: out std_logic
);
end one_bit_comparator;

architecture Structural of one_bit_comparator is

signal ANEQB		: std_logic;

begin 
		AEQB <= A XNOR B;
		ANEQB <= A XOR B;
		AGTB <= A AND ANEQB;
		ALTB <= B AND ANEQB;
>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
end architecture Structural;