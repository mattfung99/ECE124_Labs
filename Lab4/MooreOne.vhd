<<<<<<< HEAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MooreOne IS Port
(
		clk_in, extendToggle, extendEnable						: in std_logic;
		position															: in std_logic_vector(7 downto 4);
		grappleEnable, shiftClk_en, direction, extendOut	: out std_logic
 );
END ENTITY;
 

 Architecture MooreOne of MooreOne is
 
Type state is (s0, s1, s2, s3);
		-- s0 incorrect position, can't extend
		-- s1 correct position, extending
		-- s2 max extension
		-- s3 retracting
		
 
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

Transition_Section: PROCESS (nextState, extendEnable, extendToggle, position) 

BEGIN
	if(extendEnable = '0') then
			nextState <= s0;
	elsif(extendToggle = '1' AND position = "0000") then
			nextState <= s0;
	elsif(extendToggle = '1') then
			nextState <= s3;
	elsif(extendToggle = '0' AND position = "1111") then
			nextState <= s2;
	elsif(extendToggle = '0') then
			nextState <= s1;
	end if;
	
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (currentState) 

BEGIN
		if(currentState = s0) then
				extendOut <= '0';
				shiftClk_en <= '0';
				grappleEnable <= '0';
		elsif(currentState = s1) then
				extendOut <= '1';
				shiftClk_en <= '1';
				direction <= '1';
				grappleEnable <= '0';
		elsif(currentState = s2) then
				extendOut <= '1';
				shiftClk_en <= '0';
				grappleEnable <= '1';
		elsif(currentState = s3) then
				extendOut <= '1';
				shiftClk_en <= '1';
				direction <= '0';
				grappleEnable <= '0';
		end if;
END PROCESS;

 END ARCHITECTURE MooreOne;
=======
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MooreOne IS Port
(
		clk_in, extendToggle, extendEnable						: in std_logic;
		position															: in std_logic_vector(7 downto 4);
		grappleEnable, shiftClk_en, direction, extendOut	: out std_logic
 );
END ENTITY;
 

 Architecture MooreOne of MooreOne is
 
Type state is (s0, s1, s2, s3);
		-- s0 incorrect position, can't extend
		-- s1 correct position, extending
		-- s2 max extension
		-- s3 retracting
		
 
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

Transition_Section: PROCESS (nextState, extendEnable, extendToggle, position) 

BEGIN
	if(extendEnable = '0') then
			nextState <= s0;
	elsif(extendToggle = '1' AND position = "0000") then
			nextState <= s0;
	elsif(extendToggle = '1') then
			nextState <= s3;
	elsif(extendToggle = '0' AND position = "1111") then
			nextState <= s2;
	elsif(extendToggle = '0') then
			nextState <= s1;
	end if;
	
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (currentState) 

BEGIN
		if(currentState = s0) then
				extendOut <= '0';
				shiftClk_en <= '0';
				grappleEnable <= '0';
		elsif(currentState = s1) then
				extendOut <= '1';
				shiftClk_en <= '1';
				direction <= '1';
				grappleEnable <= '0';
		elsif(currentState = s2) then
				extendOut <= '1';
				shiftClk_en <= '0';
				grappleEnable <= '1';
		elsif(currentState = s3) then
				extendOut <= '1';
				shiftClk_en <= '1';
				direction <= '0';
				grappleEnable <= '0';
		end if;
END PROCESS;

 END ARCHITECTURE MooreOne;
>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
