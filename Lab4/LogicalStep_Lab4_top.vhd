
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   clkin_50		: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

component Bidir_shift_reg port (
	CLK				: in std_logic := '0';
	RESET_n			: in std_logic := '0';
	CLK_EN			: in std_logic := '0';
	LEFT0_RIGHT1	: in std_logic := '0';
	REG_BITS			: out std_logic_vector(3 downto 0)
);
end component;

component Bin_Counter4bit port (
	Main_clk			: in std_logic := '0';
	rst_n				: in std_logic := '0';
	clk_en			: in std_logic := '0';
	up1_down0		: in std_logic := '0';
	counter_bits	: out std_logic_vector(3 downto 0)
);
end component;

component four_bit_comparator port(
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

component SevenSegment port(
	hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
);
end component;

component segment7_mux port(
	clk        	: in  std_logic := '0';
	DIN2 			: in  std_logic_vector(6 downto 0);	
	DIN1 			: in  std_logic_vector(6 downto 0);
	DOUT			: out	std_logic_vector(6 downto 0);
	DIG2			: out	std_logic;
	DIG1			: out	std_logic
);
end component;

component MUX port(
	input		: in std_logic_vector(3 downto 0);
	sum		: in std_logic_vector(3 downto 0);
	selector	: in std_logic;
	output	: out std_logic_vector(3 downto 0)
);
end component;

component Mealy_State_Machine port (
		clk, xmotion, ymotion, extender_out, xgt, xlt, xeq, ygt, ylt, yeq								: in std_logic;
		xclk_en, yclk_en, xupdown, yupdown, error, extender_enable, selectX, selectY					: out std_logic
);
end component;

component MooreOne port(
		clk_in, extendToggle, extendEnable						: in std_logic;
		position															: in std_logic_vector(7 downto 4);
		grappleEnable, shiftClk_en, direction, extendOut	: out std_logic
);
end component;

component MooreTwo port(
		clk_in, grappleToggle, grappleEnable						: in std_logic;
		grappling															: out std_logic
);
end component;

----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    -- size of vectors for the counters

   SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
	signal 	extended						: std_logic;
	signal	xgreater						: std_logic;
	signal 	xless							: std_logic;
	signal 	xequals						: std_logic;
	signal 	ygreater						: std_logic;
	signal 	yless							: std_logic;
	signal 	yequals						: std_logic;
	signal 	xclock						: std_logic;
	signal 	yclock						: std_logic;
	signal 	xdirection					: std_logic;
	signal 	ydirection					: std_logic;
	signal 	canextend					: std_logic;
	signal 	currentX						: std_logic_vector(3 downto 0);
	signal 	currentY						: std_logic_vector(3 downto 0);
	signal 	EncodedX						: std_logic_vector(3 downto 0);
	signal 	EncodedY						: std_logic_vector(3 downto 0);
	signal 	DecodedX						: std_logic_vector(6 downto 0);
	signal 	DecodedY						: std_logic_vector(6 downto 0);
	signal	ReturnX						: std_logic;
	signal 	ReturnY						: std_logic;
	signal	regDirection				: std_logic;
	signal	regEnable					: std_logic;
	signal	regOutput					: std_logic_vector(7 downto 4);
	signal	grapple						: std_logic;
	
	
----------------------------------------------------------------------------------------------------
BEGIN

XComparator: four_bit_comparator port map(currentX(0), currentX(1), currentX(2), currentX(3), sw(4), sw(5), sw(6), sw(7), xgreater, xless, xequals);
YComparator: four_bit_comparator port map(currentY(0), currentY(1), currentY(2), currentY(3), sw(0), sw(1), sw(2), sw(3), ygreater, yless, yequals);
XSevenSeg: SevenSegment port map(EncodedX, DecodedX);
YSevenSeg: SevenSegment port map(EncodedY, DecodedY);
seg7mux: segment7_mux port map(clkin_50, DecodedY, DecodedX, seg7_data, seg7_char2, seg7_char1);
BidirReg: Bidir_shift_reg port map(Main_Clk, rst_n, regEnable, regDirection, regOutput);
leds(7 downto 4) <= regOutput;
XCounter: Bin_Counter4bit port map(Main_Clk, rst_n, xclock, xdirection, currentX);
YCounter: Bin_Counter4bit port map(Main_Clk, rst_n, yclock, ydirection, currentY);
XMUX : MUX port map(currentX, sw(7 downto 4), ReturnX, EncodedX);
YMUX : MUX port map(currentY, sw(3 downto 0), ReturnY, EncodedY);
MealState: Mealy_State_Machine port map(Main_Clk, pb(3), pb(2), extended, xgreater, xless, xequals, ygreater, yless, yequals, xclock, yclock, xdirection, ydirection, leds(0), canextend, ReturnX, ReturnY);
MooreState1: MooreOne port map(Main_Clk, pb(1), canextend, regOutput, grapple, regEnable, regDirection, extended);
MooreState2: MooreTwo port map(Main_Clk, pb(0), grapple, leds(3));

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
				std_logic(bin_counter(23));								-- for real FPGA operation
					
---------------------------------------------------------------------------------------------------

END SimpleCircuit;
