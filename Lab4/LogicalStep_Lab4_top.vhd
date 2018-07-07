
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS PORT(
	clkin_50		: in	std_logic;						-- clock signal
	rst_n			: in	std_logic;						-- signal determining whether to reset program
	pb				: in	std_logic_vector(3 downto 0);	-- push button inputs
 	sw   			: in  	std_logic_vector(7 downto 0); 	-- The switch inputs
    leds			: out 	std_logic_vector(7 downto 0);	-- for displaying the switch content
    seg7_data 		: out 	std_logic_vector(6 downto 0); 	-- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;						-- seg7 digi selectors
	seg7_char2  	: out	std_logic						-- seg7 digi selectors
);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

component Bidir_shift_reg port (
	CLK				: in std_logic := '0';					-- clock input
	RESET_n			: in std_logic := '0';					-- reset signal
	CLK_EN			: in std_logic := '0';					-- clock enable
	LEFT0_RIGHT1	: in std_logic := '0';					-- determines direction of shifting
	REG_BITS		: out std_logic_vector(3 downto 0)		-- 4 bit output of register
);
end component;

component Bin_Counter4bit port (
	Main_clk		: in std_logic := '0';					-- clock input (uses slower clock divided from clkin_50)
	rst_n			: in std_logic := '0';					-- reset signal
	clk_en			: in std_logic := '0';					-- clock enable
	up1_down0		: in std_logic := '0';					-- determines direction of counting (up or down)
	counter_bits	: out std_logic_vector(3 downto 0)		-- 4 bit output of counter
);
end component;

component four_bit_comparator port(
	A0		: in std_logic;									-- least significant bit of A
	A1		: in std_logic;									-- second least significant bit of A
	A2		: in std_logic;									-- second most significant bit of A
	A3		: in std_logic;									-- most significant bit of A
	B0		: in std_logic;									-- least significant bit of B
	B1		: in std_logic;									-- second least significant bit of B
	B2		: in std_logic;									-- second most significant bit of B
	B3		: in std_logic;									-- most significant bit of B
	AGTB	: out std_logic;								-- output, is 1 if A is greater than B, otherwise is 0
	ALTB	: out std_logic;								-- output, is 1 if A is less than B, otherwise is 0
	AEQB	: out std_logic									-- output, is 1 if A is equal to B, otherwise is 0
);
end component;

component SevenSegment port(
	hex	   		:  in  std_logic_vector(3 downto 0);   		-- The 4 bit data to be displayed
	sevenseg 	:  out std_logic_vector(6 downto 0)    		-- 7-bit outputs to a 7-segment
);
end component;

component segment7_mux port(
	clk        		: in  std_logic := '0';					-- clock input
	DIN2 			: in  std_logic_vector(6 downto 0);	    -- 7 bit representation of number to go to hex display
	DIN1 			: in  std_logic_vector(6 downto 0);		-- 7 bit representation of other number to go to hex display
	DOUT			: out	std_logic_vector(6 downto 0);	-- output to board used to display numbers on hex display
	DIG2			: out	std_logic;						-- output to board used to display numbers on hex display
	DIG1			: out	std_logic						-- output to board used to display numbers on hex display
);
end component;

component MUX port(
	input			: in std_logic_vector(3 downto 0);		-- 4 bit input into mux
	sum				: in std_logic_vector(3 downto 0);		-- other 4 bit input into mux
	selector		: in std_logic;							-- input that determines which 4 bit input is to be selected
	output			: out std_logic_vector(3 downto 0)		-- depending on selector value, output is one of the 4 bit inputs
);
end component;

component Mealy_State_Machine port (
		clk, xmotion, ymotion, extender_out, xgt, xlt, xeq, ygt, ylt, yeq								: in std_logic;
															-- clk: clock input
															-- xmotion: input to determine when to move to target x position
															-- ymotion: input to determine when to move to target y position
															-- extender_out: input to determine if arm is extended, in which case no movement allowed
															-- xgt: is 1 if current x position is greater than target x position
															-- xlt: is 1 if current x position is less than target x position
															-- xeq: is 1 if current x position is equal to target x position
															-- ygt: is 1 if current y position is greater than target y position
															-- ylt: is 1 if current y position is less than target y position
															-- yeq: is 1 if current y position is equal to target y position
		xclk_en, yclk_en, xupdown, yupdown, error, extender_enable, selectX, selectY					: out std_logic
															-- xclk_en: enables/disables clock on binary counter controlling x position
															-- yclk_en: enables/disables clock on binary counter controlling y position
															-- xupdown: controls direction of x movement
															-- yupdown: controls direction of y movement
															-- error: outputs 1 if there is error of some kind (trying to move when arm is extended)
															-- extender_enable: determines if arm is allowed to extend
															-- selectX: selector signal for mux determining whether current x or target x goes to hex display
															-- selectY: selector signal for mux determining whether current y or target y goes to hex display
);
end component;

component MooreOne port(
	clk_in, extendToggle, extendEnable					: in std_logic;						-- clk_in: clock input
																							-- extendToggle: input determining whether should extend arm
																							-- extendEnable: input determining whether arm is allowed to extend
	position											: in std_logic_vector(7 downto 4);	-- 4 bit input representing position of arm
	grappleEnable, shiftClk_en, direction, extendOut	: out std_logic						-- grappleEnable: output determining if grappling should be allowed
																							-- shiftClk_en: clock enable going to shift register
																							-- direction: output to shift register determining direction of arm movement
																							-- extendOut: outputs to mealy state machine to let it know if arm extended
);
end component;

component MooreTwo port(
	clk_in, grappleToggle, grappleEnable				: in std_logic;						-- clk_in: clock input
																							-- grappleToggle: input determining whether should grapple
																							-- grappleEnable: input determining whether allowed to grapple
	grappling											: out std_logic						-- output 1 if grappling, otherwise output 0
);
end component;

----------------------------------------------------------------------------------------------------
	CONSTANT SIM					:  boolean := FALSE; 					-- set to TRUE for simulation runs otherwise keep at 0.
	CONSTANT CLK_DIV_SIZE			: 	INTEGER := 26;						-- size of vectors for the counters

	SIGNAL Main_CLK					:  STD_LOGIC; 							-- main clock to drive sequencing of State Machine
	SIGNAL bin_counter				:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); 	-- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
	signal 	extended				: std_logic;							-- output of MooreState1, to MealState, 1 if arm extended, otherwise 0
	signal	xgreater				: std_logic;							-- output of XComparator to MealState, 1 if x position greater than target, otherwise 0
	signal 	xless					: std_logic;							-- output of XComparator to MealState, 1 if x position less than target, otherwise 0
	signal 	xequals					: std_logic;							-- output of XComparator to MealState, 1 if x position equal to target, otherwise 0
	signal 	ygreater				: std_logic;							-- output of YComparator to MealState, 1 if y position greater than target, otherwise 0
	signal 	yless					: std_logic;							-- output of YComparator to MealState, 1 if y position less than target, otherwise 0
	signal 	yequals					: std_logic;							-- output of YComparator to MealState, 1 if y position equal to target, otherwise 0
	signal 	xclock					: std_logic;							-- output of MealState to XCounter, used as clock enable
	signal 	yclock					: std_logic;							-- output of MealState to YCounter, used as clock enable
	signal 	xdirection				: std_logic;							-- output of MealState to XCounter, determines direction of counting
	signal 	ydirection				: std_logic;							-- output of MealState to YCounter, determines direction of counting
	signal 	canextend				: std_logic;							-- output of MealState to MooreState1, used to enable extending of arm
	signal 	currentX				: std_logic_vector(3 downto 0);			-- output of XCounter to XComparator, is 4 bit value representing current x position
	signal 	currentY				: std_logic_vector(3 downto 0);			-- output of YCounter to YComparator, is 4 bit value representing current y position
	signal 	EncodedX				: std_logic_vector(3 downto 0);			-- output of XMUX to XSevenSeg, is 4 bit value representing an x position to be decoded
	signal 	EncodedY				: std_logic_vector(3 downto 0);			-- output of YMUX to YSevenSeg, is 4 bit value representing a y position to be decoded 
	signal 	DecodedX				: std_logic_vector(6 downto 0);			-- output of XSevenSeg to seg7mux, is decoded x position to go to hex display
	signal 	DecodedY				: std_logic_vector(6 downto 0);			-- output of YSevenSeg to seg7mux, is decoded y position to go to hex display
	signal	ReturnX					: std_logic;							-- output of MealState to XMUX, is selector signal, determines which x position is displayed
	signal 	ReturnY					: std_logic;							-- output of MealState to YMUX, is selector signal, determines which y position is displayed
	signal	regDirection			: std_logic;							-- output of MooreState1 to BidirReg, determines direction that the arm should be moving
	signal	regEnable				: std_logic;							-- output of MooreState1 to BidirReg, enables shift register
	signal	regOutput				: std_logic_vector(7 downto 4);			-- output of BidirReg to MooreState1, gives position of arm
	signal	grapple					: std_logic;							-- output of MooreState1 to MooreState2, enables grappling
	
	
----------------------------------------------------------------------------------------------------
BEGIN

XComparator: four_bit_comparator port map(currentX(0), currentX(1), currentX(2), currentX(3), sw(4), sw(5), sw(6), sw(7), xgreater, xless, xequals); -- compares current x and target x positions
YComparator: four_bit_comparator port map(currentY(0), currentY(1), currentY(2), currentY(3), sw(0), sw(1), sw(2), sw(3), ygreater, yless, yequals); -- compares current y and target y positions
XSevenSeg: SevenSegment port map(EncodedX, DecodedX);																-- converts 4 bit number into 7 bit, to allow output to hex display
YSevenSeg: SevenSegment port map(EncodedY, DecodedY);																-- converts 4 bit number into 7 bit, to allow output to hex display
seg7mux: segment7_mux port map(clkin_50, DecodedY, DecodedX, seg7_data, seg7_char2, seg7_char1);					-- outputs an x and y position to hex displays
BidirReg: Bidir_shift_reg port map(Main_Clk, rst_n, regEnable, regDirection, regOutput);							-- shift register used to represent extending/retracting of arm
leds(7 downto 4) <= regOutput;																						-- output position of arm, 0000 not extended, 1111 all the way extended
XCounter: Bin_Counter4bit port map(Main_Clk, rst_n, xclock, xdirection, currentX);									-- counter used to represent x position
YCounter: Bin_Counter4bit port map(Main_Clk, rst_n, yclock, ydirection, currentY);									-- counter used to represent y position
XMUX : MUX port map(currentX, sw(7 downto 4), ReturnX, EncodedX);													-- multiplexer, determines whether current or target x position is displayed
YMUX : MUX port map(currentY, sw(3 downto 0), ReturnY, EncodedY);													-- multiplexer, determines whether current or target y position is displayed
MealState: Mealy_State_Machine port map(Main_Clk, pb(3), pb(2), extended, xgreater, xless, xequals, ygreater, yless, yequals, xclock, yclock, xdirection, ydirection, leds(0), canextend, ReturnX, ReturnY);
																			-- 										-- controls movement, based on inputs from board and state machines
MooreState1: MooreOne port map(Main_Clk, pb(1), canextend, regOutput, grapple, regEnable, regDirection, extended);  -- controls extension of arm based on inputs from board and state machines
MooreState2: MooreTwo port map(Main_Clk, pb(0), grapple, leds(3));													-- controls grappling based on inputs from board and state machines

-- CLOCKING GENERATOR WHICH DIVIDES THE INPUT CLOCK DOWN TO A LOWER FREQUENCY

BinCLK: PROCESS(clkin_50, rst_n) is
   BEGIN
		IF (rising_edge(clkin_50)) THEN -- binary counter increments on rising clock edge
        	bin_counter <= bin_counter + 1;
		END IF;
   END PROCESS;

Clock_Source:
				Main_Clk <= 
				clkin_50 when sim = TRUE else				-- for simulations only
				std_logic(bin_counter(23));					-- for real FPGA operation
					
---------------------------------------------------------------------------------------------------

END SimpleCircuit;
