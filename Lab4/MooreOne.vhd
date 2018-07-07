library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MooreOne IS Port
(
		clk_in, extendToggle, extendEnable					: in std_logic;						-- All the inputs that the Moore takes in
		position											: in std_logic_vector(7 downto 4);	-- 4 Input for the 4 Bit Bidirectional Register
		grappleEnable, shiftClk_en, direction, extendOut	: out std_logic						-- All the output signals that the Moore outputs
 );
END ENTITY;
 

 Architecture MooreOne of MooreOne is
 
Type state is (s0, s1, s2, s3);
		-- s0 incorrect position, can't extend
		-- s1 correct position, extending
		-- s2 max extension
		-- s3 retracting
		
 
 signal currentState			: state;			-- Signals that denote the current state and next state of the Moore
 signal nextState				: state;
 

  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_in, nextState)			-- This process synchronizes the activity to a clock
BEGIN	
	if(rising_edge(clk_in)) Then						-- If the low to high values are returned true then set the current state to the next state for the Moore
		currentState <= nextState;
	End if;
End PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (nextState, extendEnable, extendToggle, position) 

BEGIN
	if(extendEnable = '0') then								-- If we can't extend, we know that we are not in the right position as you can't extend unless you are there
			nextState <= s0;								-- Hence keep the state at s0 which denotes that we are in the incorrect position
	elsif(extendToggle = '1' AND position = "0000") then	-- If our position isn't correct and we try to toggle, then we will stay at s0 as we can't extend
			nextState <= s0;
	elsif(extendToggle = '1') then							-- If we are already toggling, set the state to s3 (Retracting) to prevent toggling again while toggling
			nextState <= s3;
	elsif(extendToggle = '0' AND position = "1111") then	-- If we can't toggle and we're already at the max position then we know that we are at max extension
			nextState <= s2;
	elsif(extendToggle = '0') then							-- Extending when we are already at the right position
			nextState <= s1;
	end if;
	
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (currentState) 

BEGIN
		if(currentState = s0) then			-- If we can't extend due to the wrong position then
				extendOut <= '0';			-- We continue to not be able to extend
				shiftClk_en <= '0';			-- The shift clock that goes to the enabler is still disabled
				grappleEnable <= '0';		-- We won't allow the grappler to grapple

		elsif(currentState = s1) then		-- If we are already extending and are at the right position
				extendOut <= '1';			-- We continue to extend
				shiftClk_en <= '1';			-- We allow the shift clock that goes to the enabler to be enabled
				direction <= '1';			-- We enabled direction to allow the extender to move 
				grappleEnable <= '0';		-- Can't grapple as we aren't at max extension yet

		elsif(currentState = s2) then		-- If we are at max extension
				extendOut <= '1';			-- We set the extend variable to true still to prevent any further movement
				shiftClk_en <= '0'; 		-- The shift clock that goes to the enabler is disabled as we are at max extension
				grappleEnable <= '1';		-- Permission to grapple is granted

		elsif(currentState = s3) then		-- If we are retracting
				extendOut <= '1';			-- We allow movement as we need to retract
				shiftClk_en <= '1';			-- The shift clock that goes to the enabler is enabled as we need to keep track of movement
				direction <= '0';			-- We enable direction to allow the extender to move (0 denotes reverse direction)
				grappleEnable <= '0';		-- We already grappled so we aren't going to grapple again when the grappler is being retrieved
		end if;
END PROCESS;

 END ARCHITECTURE MooreOne;
