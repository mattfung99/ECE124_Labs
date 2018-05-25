library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 		-- The switch inputs
   leds				: out std_logic_vector(7 downto 0); 		-- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); 		-- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is

--
-- Components Used ---
------------------------------------------------------------------- 

  component SevenSegment port (                  				-- with a 4-bit input, will output 7 bits specifying which segments to light up
  
   hex   		:  in  std_logic_vector(3 downto 0);   			-- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    			-- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	component segment7_mux port(                                -- 7 segment hex decoder
	                                                            -- takes in 2, 7-bit values to map onto the 2 hex displays
			clk			: in std_logic := '0';					
			DIN2		: in std_logic_vector(6 downto 0);		-- input for one digit
			DIN1		: in std_logic_vector(6 downto 0);		-- input for other digit
			DOUT		: out std_logic_vector(6 downto 0); 	-- output to hex displays
			DIG2		: out std_logic;
			DIG1		: out std_logic
	);
	end component;
	
	component MUX port(                                         -- takes in 2, 8-bit signals, and one button input, and outputs one of the signals determined by button input

			input		: in std_logic_vector(7 downto 0);      -- 8-bit input signal
			sum			: in std_logic_vector(7 downto 0);      -- 8-bit input signal
			selector	: in std_logic;                         -- button input
			output		: out std_logic_vector(7 downto 0)      -- 8-bit output signal
	);
	end component;
	
	component LogicProcessor port(                              -- takes 2, 4-bit inputs, and a 3-bit input. the 3-bit input determines which operation will be performed on the
	                                                            -- 4-bit inputs, one of AND, OR, or XOR, and outputs the result

			input1		: in std_logic_vector(3 downto 0);		-- 4-bit input
			input2		: in std_logic_vector(3 downto 0);		-- 4-bit input
			operator	: in std_logic_vector(2 downto 0);		-- 3-bit input
			output		: out std_logic_vector(3 downto 0)		-- 4-bit output
	);
	end component;
	
	component FourBitAdder port(                                -- takes in 2, 4-bit inputs, and adds them together, and outputs them as an 8-bit signal
			
			input1	: in std_logic_vector(3 downto 0);          -- 4-bit input
			input2	: in std_logic_vector(3 downto 0);          -- 4-bit input
			sum		: out std_logic_vector(7 downto 0)          -- 8-bit sum output
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
	signal OPERATOR		: std_logic_vector(3 downto 0);
	signal firstpart	: std_logic_vector(3 downto 0);
	signal secondpart	: std_logic_vector(3 downto 0);
	signal hex_AB		: std_logic_vector(7 downto 0);
	signal outputLED	: std_logic_vector(7 downto 0);
	signal sum			: std_logic_vector(7 downto 0);
	signal output		: std_logic_vector(7 downto 0);
	signal outputLP	: std_logic_vector(3 downto 0);
	
	
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0);		-- contains states of switches 0-3
	hex_B <= sw(7 downto 4);		-- contains states of switches 4-7
	OPERATOR <= pb(3 downto 0);		-- contains states of push buttons 0-3

--COMPONENT HOOKUP
--
-- generate the seven segment coding

	firstpart <= output(7 downto 4);		-- stores the first four bits of the output signal
	secondpart <= output(3 downto 0);		-- stores the last four bits of the output signal
	hex_AB <= hex_A & hex_B;				-- stores the concatenation of hex_A, and hex_B
	leds(0) <= outputLED(0);				-- outputs state of outputLED(0) to LED(0)
	leds(1) <= outputLED(1);				-- outputs state of outputLED(1) to LED(1)
	leds(2) <= outputLED(2);				-- outputs state of outputLED(2) to LED(2)
	leds(3) <= outputLED(3);				-- outputs state of outputLED(3) to LED(3)

	INST1: SevenSegment port map(firstpart, seg7_A);											-- maps first four bits of output signal to seven segment decoder
	INST2: SevenSegment port map(secondpart, seg7_B);											-- maps last four bits of output signal to seven segment decoder
	INST3: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char1, seg7_char2);	-- decode the inputs from both seven segment components, and output to hex displays
	INST4: MUX port map(hex_AB, sum, OPERATOR(3), output);									-- take input of push button 3, and depending on state let either the two operands through, or their sum
	INST5: LogicProcessor port map(hex_A, hex_B, OPERATOR(2 downto 0), outputLP);				-- take input of push buttons 0-2, and perform an operation (AND, OR, or XOR) and output the result
	INST6: MUX port map("0000" & outputLP, sum, OPERATOR(3), outputLED);						-- take input of push button 3, and depending on state let either the output of logic processor,
																								-- or the sum signal pass through and be output to the LEDs
	INST7: FourBitAdder port map(hex_A, hex_B, sum);											-- takes in hex_A and hex_B, and outputs their sum
 
end SimpleCircuit;

