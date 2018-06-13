library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is
--
-- Components Used
------------------------------------------------------------------- 
component four_bit_comparator port (
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
end component;

component segment7_mux port (
	clk        : in  std_logic := '0';
	DIN2 		: in  std_logic_vector(6 downto 0);	
	DIN1 		: in  std_logic_vector(6 downto 0);
	DOUT			: out	std_logic_vector(6 downto 0);
	DIG2			: out	std_logic;
	DIG1			: out	std_logic
);
end component;

component SevenSegment port (
	hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
);
end component;
------------------------------------------------------------------
	
	
-- Create any signals, or temporary variables to be used
	signal A		: std_logic_vector(3 downto 0);
	signal B		: std_logic_vector(3 downto 0);
	signal DoorsWindowsOpen	: std_logic_vector(2 downto 0);
	signal Furnace_On		: std_logic;
	signal AC_ON		: std_logic;
	signal CurrentTemperature		: std_logic_vector(6 downto 0);
	signal DesiredTemperature		: std_logic_vector(6 downto 0);
	signal AGTB	: std_logic;
	signal ALTB	: std_logic;
	signal AEQB	: std_logic;
-- Here the circuit begins

begin
	A <= sw(3 downto 0);
	B <= sw(7 downto 4);
	DoorsWindowsOpen <= NOT pb(2 downto 0);
	leds(6 downto 4) <= DoorsWindowsOpen(2 downto 0);
	Furnace_On <= (ALTB AND (NOT DoorsWindowsOpen(0)) AND (NOT DoorsWindowsOpen(1)) AND (NOT DoorsWindowsOpen(2)));
	leds(0) <= Furnace_On;
	leds(1) <= AEQB;
	AC_ON <= (AGTB AND (NOT DoorsWindowsOpen(0)) AND (NOT DoorsWindowsOpen(1)) AND (NOT DoorsWindowsOpen(2)));
	leds(2) <= AC_ON;
	leds(3) <= Furnace_On OR AC_ON;
	INST1: four_bit_comparator port map(A(0), A(1), A(2), A(3), B(0), B(1), B(2), B(3), AGTB, ALTB, AEQB);
	INST2: SevenSegment port map(A, CurrentTemperature);
	INST3: SevenSegment port map(B, DesiredTemperature);
	INST4: segment7_mux port map(clkin_50, DesiredTemperature, CurrentTemperature, seg7_data, seg7_char1, seg7_char2);
end Energy_Monitor;

