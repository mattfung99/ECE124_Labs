library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 
  component SevenSegment port (
  
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
	
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	component segment7_mux port(
			clk		: in std_logic := '0';
			DIN2		: in std_logic_vector(6 downto 0);
			DIN1		: in std_logic_vector(6 downto 0);
			DOUT		: out std_logic_vector(6 downto 0);
			DIG2		: out std_logic;
			DIG1		: out std_logic
	);
	end component;
	
	component MUX port(
			input		: in std_logic_vector(7 downto 0);
			sum		: in std_logic_vector(7 downto 0);
			selector	: in std_logic;
			output	: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component LogicProcessor port(
			input1	: in std_logic_vector(3 downto 0);
			input2	: in std_logic_vector(3 downto 0);
			operator	: in std_logic_vector(2 downto 0);
			output	: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component FourBitAdder port(
			input1	: in std_logic_vector(3 downto 0);
			input2	: in std_logic_vector(3 downto 0);
			sum		: out std_logic_vector(7 downto 0)
	);
	end component;
--------------------------------------------------------------------------------	
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
	signal seg7_A		: std_logic_vector(6 downto 0);
	signal seg7_B		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	signal hex_B		: std_logic_vector(3 downto 0);
	signal OPERATOR	: std_logic_vector(3 downto 0);
	signal firstpart	: std_logic_vector(3 downto 0);
	signal secondpart	: std_logic_vector(3 downto 0);
	signal hex_AB		: std_logic_vector(7 downto 0);
	signal outputLED	: std_logic_vector(7 downto 0);
	signal sum			: std_logic_vector(7 downto 0);
	signal output		: std_logic_vector(7 downto 0);
	signal outputLP	: std_logic_vector(3 downto 0);
	
	
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0);
	hex_B <= sw(7 downto 4);
	OPERATOR <= pb(3 downto 0);

--COMPONENT HOOKUP
--
-- generate the seven segment coding

	firstpart <= output(7 downto 4);
	secondpart <= output(3 downto 0);
	hex_AB <= hex_A & hex_B;
	leds(0) <= outputLED(0);
	leds(1) <= outputLED(1);
	leds(2) <= outputLED(2);
	leds(3) <= outputLED(3);

	INST1: SevenSegment port map(firstpart, seg7_A);
	INST2: SevenSegment port map(secondpart, seg7_B);
	INST3: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char1, seg7_char2);
	INST4: MUX port map(hex_AB, sum, OPERATOR(3), output);
	INST5: LogicProcessor port map(hex_A, hex_B, OPERATOR(2 downto 0), outputLP);
	INST6: MUX port map("0000" & outputLP, sum, OPERATOR(3), outputLED);
	INST7: FourBitAdder port map(hex_A, hex_B, sum);
 
end SimpleCircuit;

