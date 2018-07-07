library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mealy_State_Machine is port (
		clk, xmotion, ymotion, extender_out, xgt, xlt, xeq, ygt, ylt, yeq						: in std_logic;			-- Inputs 
		xclk_en, yclk_en, xupdown, yupdown, error, extender_enable, selectX, selectY			: out std_logic			-- Outputs
);
end entity;

architecture Mealy of Mealy_State_Machine is

TYPE XStatus is (s0, s1);
				-- s0: x-enabled (When the player pushes on the button to move X)
				-- s1: x-disabled (When the button for the X direction is untouched) 
TYPE YStatus is (s2, s3);
				-- s2: y-enabled (When the player pushes on the button to move Y)
				-- s3: y-disabled (When the button for the Y direction is untouched) 

SIGNAL currentXState, nextXState		: XStatus;		-- Signals to show the status of where we are in the Mealy State Machine for both X and Y directions
SIGNAL currentYState, nextYState		: Ystatus;

begin


Register_Section: process(clk, nextXState, nextYState)
begin
		if(rising_edge(clk)) then						-- If the values from low to high are returned true then set both the x and y states to the next states 
				currentXState <= nextXState;			-- The next states is the state where both the coordinates at x and y are at the targetted location
				currentYState <= nextYState;
		end if;
end process;


Transition_Section: process(xmotion, ymotion)
begin													
		if(xmotion = '0' AND extender_out = '0') then	-- If there there is no movement in the x direction and the signal for extending the grappler is 0 
				nextXState <= s0;						-- then we set the next state to s0 (x-enabled) so that we can start moving in the x direction on will
		end if;
		if(ymotion = '0' AND extender_out = '0') then	-- If there there is no movement in the y direction and the signal for extending the grappler is 0 
				nextYState <= s2;						-- then we set the next state to s2 (y-enabled) so that we can start moving in the y direction on will
		end if;
		if(xeq = '1') then								-- xeq checks if we are at the targetted location... in this case when xeq is the targetted location 
				nextXState <= s1;						-- denoted by '1', we set the state to s1 (x-disabled) as we can't move anymore if we're already there
		end if;
		if(yeq = '1') then								-- yeq checks if we are at the targetted location... in this case when xeq is the targetted location 
				nextYState <= s3;						-- denoted by '1', we set the state to s3 (y-disabled) as we can't move anymore if we're already there
		end if;
		
end process;


Decoder_Section: process(currentXState, currentYState, extender_out, xgt, xlt, xeq, ygt, ylt, yeq)
begin
		if(xeq = '1' AND yeq = '1' AND currentXState = s1 AND currentYState = s3) then	-- If we are already at the targetted location in the x and y coordinates
				extender_enable <= '1';													-- and both movements in x and y are disabled, then the grappler can be extended
		else
				extender_enable <= '0';													-- If we're not there yet, then the extender can't be extended regardless
		end if;
		if((xeq = '1' AND xmotion = '0') OR (yeq = '1' AND ymotion = '0') OR (extender_out = '1' AND(xmotion = '0' OR ymotion = '0'))) then
				error <= '1';					-- Essentially there will be an error if you keep trying to move in the x or y direction when you're already at the targetted
		else									-- locations and you can't move while the extender is extended or extending
				error <= '0';					-- Apart from this, no error will be alerted or shown
		end if;
		if(extender_out = '0') then								-- If the extender isn't out then
				if(xgt = '1' AND currentXState = s0) then		-- If the movement is enabled and we are at the targetted location (For x direction)
						xclk_en <= '1';							-- We allow the signal on the clock to count down 
						xupdown <= '0';							
				elsif(xlt = '1' AND currentXState = s0) then	-- If the movement is enabled and we aren't at the targetted location (For x direction)
						xclk_en <= '1';							-- We allow the signal on the clock to count up 
						xupdown <= '1';
				else
						xclk_en <= '0';							-- Else we keep the same as before
				end if;
				
				if(ygt = '1' AND currentYState = s2) then		-- If the movement is enabled and we are at the targetted location (For y direction)
						yclk_en <= '1';							-- We allow the signal on the clock to count down 
						yupdown <= '0';
				elsif(ylt = '1' AND currentYState = s2) then	-- If the movement is enabled and we aren't at the targetted location (For y direction)
						yclk_en <= '1';							-- We allow the signal on the clock to count up 
						yupdown <= '1';
				else
						yclk_en <= '0';							-- Else we keep the same as before
				end if;
		end if;
		if(currentXState = s1) then								-- When we can't move in the x-direction
				selectX <= '0';									-- We set the output variable to 0 which will be processed in the MUX to display the targetted location
		else
				selectX <= '1';									-- Else the MUX will process to display the current location 
		end if;
		if(currentYState = s3) then								-- When we can't move in the y-direction
				selectY <= '0';									-- We set the output variable to 0 which will be processed in the MUX to display the targetted location
		else
				selectY <= '1';									-- Else the MUX will process to display the current location
		end if;
end process;

end architecture Mealy;
		


			