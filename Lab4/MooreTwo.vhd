<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MooreTwo IS Port
(
	clk_in, grappleToggle, grappleEnable	: in std_logic; -- clk_in: clock input
															-- grappleToggle: input determining when to grapple
															-- grappleEnable: input determining when allowed to grapple
	grappling								: out std_logic -- output 1 if grappling, otherwise 0
 );
END ENTITY;
 

 Architecture MooreTwo of MooreTwo is
 
 Type state is (s0, s1, s2);
		-- s0 can't grapple
		-- s1 open (not grappling)
		-- s2 closed (grappling)
		 
 signal currentState			: state;		-- holds the current state
 signal nextState				: state;		-- holds the next state to move to upon rising edge of clock pulse
 signal grapplevar				: std_logic;	-- stores whether or not grappling (1 grappling, 0 not grappling)
 

  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_in, nextState)  -- this process synchronizes the activity to a clock
BEGIN
	IF(rising_edge(clk_in)) THEN
		currentState <= nextState;		-- on rising edge of clock pulse, move to the next state
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (currentState, nextState, grappleEnable, grappleToggle, grapplevar) 

BEGIN
	if(grappleEnable = '0') then
			nextState <= s0;									-- if grapple isn't enabled, next state is s0 (can't grapple)
	elsif(grappleToggle = '0' AND grapplevar = '1') then		
			nextState <= s1;									-- if grapple enabled, and grapple toggle activated, and already grappling, then stop grappling
	elsif(grappleToggle = '0' AND grapplevar = '0')then
			nextState <= s2;									-- if grapple enabled, and grapple toggle activated, and not grappling, then start grappling
	else
			nextState <= currentState;							-- if grapple toggle not activated, stay in the same state
	end if;
	
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (currentState) 

BEGIN
		if(currentState = s0) then
				grapplevar <= '0';								-- if in s0 (can't grapple), output 0 (not grappling)
		elsif(currentState = s1) then
				grapplevar <= '0';								-- if in s1 (not grappling), output 0 (not grappling)
		elsif(currentState = s2) then
				grapplevar <= '1';								-- if in s2 (grappling), output 1 (grappling)
		end if;
END PROCESS;
grappling <= grapplevar;										-- output grapplevar
 END ARCHITECTURE MooreTwo;
=======
<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MooreTwo IS Port
(
		clk_in, grappleToggle, grappleEnable						: in std_logic;
		grappling															: out std_logic
 );
END ENTITY;
 

 Architecture MooreTwo of MooreTwo is
 
 signal grapplevar		: std_logic;
 
Type state is (s0, s1, s2);
		-- s0 can't grapple
		-- s1 open
		-- s2 closed
		
 
 signal currentState			: state;
 signal nextState				: state;
 

  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_in, nextState)  -- this process synchronizes the activity to a clock
BEGIN
	IF(rising_edge(clk_in)) THEN
		currentState <= nextState;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (currentState, nextState, grappleEnable, grappleToggle, grapplevar) 

BEGIN
	if(grappleEnable = '0') then
			nextState <= s0;
	elsif(grappleToggle = '0' AND grapplevar = '1') then
			nextState <= s1;
	elsif(grappleToggle = '0' AND grapplevar = '0')then
			nextState <= s2;
	else
			nextState <= currentState;
	end if;
	
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (currentState) 

BEGIN
		if(currentState = s0) then
				grapplevar <= '0';
		elsif(currentState = s1) then
				grapplevar <= '0';
		elsif(currentState = s2) then
				grapplevar <= '1';
		end if;
END PROCESS;
grappling <= grapplevar;
 END ARCHITECTURE MooreTwo;
=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MooreTwo IS Port
(
		clk_in, grappleToggle, grappleEnable						: in std_logic;
		grappling															: out std_logic
 );
END ENTITY;
 

 Architecture MooreTwo of MooreTwo is
 
 signal grapplevar		: std_logic;
 
Type state is (s0, s1, s2);
		-- s0 can't grapple
		-- s1 open
		-- s2 closed
		
 
 signal currentState			: state;
 signal nextState				: state;
 

  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_in, nextState)  -- this process synchronizes the activity to a clock
BEGIN
	IF(rising_edge(clk_in)) THEN
		currentState <= nextState;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (currentState, nextState, grappleEnable, grappleToggle, grapplevar) 

BEGIN
	if(grappleEnable = '0') then
			nextState <= s0;
	elsif(grappleToggle = '0' AND grapplevar = '1') then
			nextState <= s1;
	elsif(grappleToggle = '0' AND grapplevar = '0')then
			nextState <= s2;
	else
			nextState <= currentState;
	end if;
	
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (currentState) 

BEGIN
		if(currentState = s0) then
				grapplevar <= '0';
		elsif(currentState = s1) then
				grapplevar <= '0';
		elsif(currentState = s2) then
				grapplevar <= '1';
		end if;
END PROCESS;
grappling <= grapplevar;
 END ARCHITECTURE MooreTwo;
>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
>>>>>>> 7e5f405bd1234cc1fdcbfed4738d05cb150fe903
