<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
	pb			: in	std_logic_vector(3 downto 0);
 	sw   		: in  	std_logic_vector(7 downto 0); 		-- The switch inputs
   leds			: out 	std_logic_vector(7 downto 0);		-- for displaying the switch content
   seg7_data 	: out 	std_logic_vector(6 downto 0); 		-- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is
--
-- Components Used
------------------------------------------------------------------- 
component four_bit_comparator port (
	A0		: in std_logic;				-- fourth bit of A input
	A1		: in std_logic;				-- third bit of A input
	A2		: in std_logic;				-- second bit of A input
	A3		: in std_logic;				-- first bit of A input
	B0		: in std_logic;				-- fourth bit of B input
	B1		: in std_logic;				-- third bit of B input
	B2		: in std_logic;				-- second bit of B input
	B3		: in std_logic;				-- first bit of B input
	AGTB	: out std_logic;			-- outputs 1 if A > B
	ALTB	: out std_logic;			-- outputs 1 if A < B
	AEQB	: out std_logic				-- outputs 1 if A = B
);
end component;

component segment7_mux port (
	clk        	: in  	std_logic := '0';
	DIN2 		: in  	std_logic_vector(6 downto 0);	
	DIN1 		: in  	std_logic_vector(6 downto 0);
	DOUT		: out	std_logic_vector(6 downto 0);
	DIG2		: out	std_logic;
	DIG1		: out	std_logic
);
end component;

component SevenSegment port (
	hex	   :  in  std_logic_vector(3 downto 0);   	-- The 4 bit data to be displayed
	sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
);
end component;
------------------------------------------------------------------
	
	
-- Create any signals, or temporary variables to be used
	signal A		: std_logic_vector(3 downto 0);				-- four bit input A
	signal B		: std_logic_vector(3 downto 0);				-- four bit input B
	signal AGTB		: std_logic;								-- contains result of A > B (1 true, 0 false)
	signal ALTB		: std_logic;								-- contains result of A < B (1 true, 0 false)
	signal AEQB		: std_logic;								-- contains result of A = B (1 true, 0 false)
	signal Furnace_On	: std_logic;							-- if 1, then furnace on
	signal AC_ON		: std_logic;							-- if 1, then AC on

	signal DoorsWindowsOpen	: std_logic_vector(2 downto 0);				-- stores which of door/windows are open(1) or closed(0)
	signal CurrentTemperature		: std_logic_vector(6 downto 0);		-- 7 bit representation of current temperature, to go to seven segment display	
	signal DesiredTemperature		: std_logic_vector(6 downto 0);		-- 7 bit representation of desired temperature, to go to seven segment display

-- Here the circuit begins

begin
	A <= sw(3 downto 0);								-- A takes current temperature from switches 3-0
	B <= sw(7 downto 4);								-- B takes desired temperature from switches 7-4
	DoorsWindowsOpen <= NOT pb(2 downto 0);				-- status of doors and windows taken from push buttons 2-0
	leds(6 downto 4) <= DoorsWindowsOpen(2 downto 0);	-- status of doors and windows output to leds 6-4
	leds(0) <= Furnace_On;								-- output status of furnace (1 on, 0 off) to led 0
	leds(1) <= AEQB;									-- if current temperature equals desired temperature, turn on led 1
	leds(2) <= AC_ON;									-- output status of AC (1 on, 0 off) to led 2
	leds(3) <= Furnace_On OR AC_ON;						-- output status of fan (1 on, 0 off) to led 3, fan is on if
														-- either furnace or AC is on

	Furnace_On <= (ALTB AND (NOT DoorsWindowsOpen(0)) AND (NOT DoorsWindowsOpen(1)) AND (NOT DoorsWindowsOpen(2)));		-- determines when to turn furnace on
	AC_ON <= (AGTB AND (NOT DoorsWindowsOpen(0)) AND (NOT DoorsWindowsOpen(1)) AND (NOT DoorsWindowsOpen(2)));			-- determines when to turn AC on
	INST1: four_bit_comparator port map(A(0), A(1), A(2), A(3), B(0), B(1), B(2), B(3), AGTB, ALTB, AEQB);				-- four bit comparator to compare the four bit temperature values
	INST2: SevenSegment port map(A, CurrentTemperature);							-- takes four bit temperature and converts into 7 bits for seven segment display to display current temperature
	INST3: SevenSegment port map(B, DesiredTemperature);							-- takes four bit temperature and converts into 7 bits for seven segment display to display desired temperature
	INST4: segment7_mux port map(clkin_50, DesiredTemperature, CurrentTemperature, seg7_data, seg7_char1, seg7_char2);	-- outputs 7 bit temperature values onto seven segment displays
		
end Energy_Monitor;

=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
	pb			: in	std_logic_vector(3 downto 0);
 	sw   		: in  	std_logic_vector(7 downto 0); 		-- The switch inputs
   leds			: out 	std_logic_vector(7 downto 0);		-- for displaying the switch content
   seg7_data 	: out 	std_logic_vector(6 downto 0); 		-- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is
--
-- Components Used
------------------------------------------------------------------- 
component four_bit_comparator port (
	A0		: in std_logic;				-- fourth bit of A input
	A1		: in std_logic;				-- third bit of A input
	A2		: in std_logic;				-- second bit of A input
	A3		: in std_logic;				-- first bit of A input
	B0		: in std_logic;				-- fourth bit of B input
	B1		: in std_logic;				-- third bit of B input
	B2		: in std_logic;				-- second bit of B input
	B3		: in std_logic;				-- first bit of B input
	AGTB	: out std_logic;			-- outputs 1 if A > B
	ALTB	: out std_logic;			-- outputs 1 if A < B
	AEQB	: out std_logic				-- outputs 1 if A = B
);
end component;

component segment7_mux port (
	clk        	: in  	std_logic := '0';
	DIN2 		: in  	std_logic_vector(6 downto 0);	
	DIN1 		: in  	std_logic_vector(6 downto 0);
	DOUT		: out	std_logic_vector(6 downto 0);
	DIG2		: out	std_logic;
	DIG1		: out	std_logic
);
end component;

component SevenSegment port (
	hex	   :  in  std_logic_vector(3 downto 0);   	-- The 4 bit data to be displayed
	sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
);
end component;
------------------------------------------------------------------
	
	
-- Create any signals, or temporary variables to be used
	signal A		: std_logic_vector(3 downto 0);				-- four bit input A
	signal B		: std_logic_vector(3 downto 0);				-- four bit input B
	signal AGTB		: std_logic;								-- contains result of A > B (1 true, 0 false)
	signal ALTB		: std_logic;								-- contains result of A < B (1 true, 0 false)
	signal AEQB		: std_logic;								-- contains result of A = B (1 true, 0 false)
	signal Furnace_On	: std_logic;							-- if 1, then furnace on
	signal AC_ON		: std_logic;							-- if 1, then AC on

	signal DoorsWindowsOpen	: std_logic_vector(2 downto 0);				-- stores which of door/windows are open(1) or closed(0)
	signal CurrentTemperature		: std_logic_vector(6 downto 0);		-- 7 bit representation of current temperature, to go to seven segment display	
	signal DesiredTemperature		: std_logic_vector(6 downto 0);		-- 7 bit representation of desired temperature, to go to seven segment display

-- Here the circuit begins

begin
	A <= sw(3 downto 0);								-- A takes current temperature from switches 3-0
	B <= sw(7 downto 4);								-- B takes desired temperature from switches 7-4
	DoorsWindowsOpen <= NOT pb(2 downto 0);				-- status of doors and windows taken from push buttons 2-0
	leds(6 downto 4) <= DoorsWindowsOpen(2 downto 0);	-- status of doors and windows output to leds 6-4
	leds(0) <= Furnace_On;								-- output status of furnace (1 on, 0 off) to led 0
	leds(1) <= AEQB;									-- if current temperature equals desired temperature, turn on led 1
	leds(2) <= AC_ON;									-- output status of AC (1 on, 0 off) to led 2
	leds(3) <= Furnace_On OR AC_ON;						-- output status of fan (1 on, 0 off) to led 3, fan is on if
														-- either furnace or AC is on

	Furnace_On <= (ALTB AND (NOT DoorsWindowsOpen(0)) AND (NOT DoorsWindowsOpen(1)) AND (NOT DoorsWindowsOpen(2)));		-- determines when to turn furnace on
	AC_ON <= (AGTB AND (NOT DoorsWindowsOpen(0)) AND (NOT DoorsWindowsOpen(1)) AND (NOT DoorsWindowsOpen(2)));			-- determines when to turn AC on
	INST1: four_bit_comparator port map(A(0), A(1), A(2), A(3), B(0), B(1), B(2), B(3), AGTB, ALTB, AEQB);				-- four bit comparator to compare the four bit temperature values
	INST2: SevenSegment port map(A, CurrentTemperature);							-- takes four bit temperature and converts into 7 bits for seven segment display to display current temperature
	INST3: SevenSegment port map(B, DesiredTemperature);							-- takes four bit temperature and converts into 7 bits for seven segment display to display desired temperature
	INST4: segment7_mux port map(clkin_50, DesiredTemperature, CurrentTemperature, seg7_data, seg7_char1, seg7_char2);	-- outputs 7 bit temperature values onto seven segment displays
		
end Energy_Monitor;

>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
