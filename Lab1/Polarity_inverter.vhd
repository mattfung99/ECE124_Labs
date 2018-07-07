<<<<<<< HEAD
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;

ENTITY Polarity_inverter_vhdl IS
	PORT
	(
		IN_1, IN_2, IN_3, IN_4, POLARITY_CNTR : IN BIT;
		OUT_1, OUT_2, OUT_3, OUT_4 : OUT BIT
	);
END ENTITY Polarity_inverter_vhdl;

ARCHITECTURE simple_gates OF Polarity_inverter_vhdl IS

BEGIN
OUT_1 <= IN_1 XOR POLARITY_CNTR;
OUT_2 <= IN_2 XOR POLARITY_CNTR;
OUT_3 <= IN_3 XOR POLARITY_CNTR;
OUT_4 <= IN_4 XOR POLARITY_CNTR;

END simple_gates;


=======
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;

ENTITY Polarity_inverter_vhdl IS
	PORT
	(
		IN_1, IN_2, IN_3, IN_4, POLARITY_CNTR : IN BIT;
		OUT_1, OUT_2, OUT_3, OUT_4 : OUT BIT
	);
END ENTITY Polarity_inverter_vhdl;

ARCHITECTURE simple_gates OF Polarity_inverter_vhdl IS

BEGIN
OUT_1 <= IN_1 XOR POLARITY_CNTR;
OUT_2 <= IN_2 XOR POLARITY_CNTR;
OUT_3 <= IN_3 XOR POLARITY_CNTR;
OUT_4 <= IN_4 XOR POLARITY_CNTR;

END simple_gates;


>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
