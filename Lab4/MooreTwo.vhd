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
