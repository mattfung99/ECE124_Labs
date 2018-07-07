library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mealy_State_Machine is port (
		clk, xmotion, ymotion, extender_out, xgt, xlt, xeq, ygt, ylt, yeq		: in std_logic;
		xclk_en, yclk_en, xupdown, yupdown, error, extender_enable, selectX, selectY			: out std_logic
);
end entity;

architecture Mealy of Mealy_State_Machine is

TYPE XStatus is (s0, s1);
				-- s0: x-enabled
				-- s1: x-disabled
TYPE YStatus is (s2, s3);
				-- s2: y-enabled
				-- s3: y-disabled

SIGNAL currentXState, nextXState		: XStatus;
SIGNAL currentYState, nextYState		: Ystatus;

begin


Register_Section: process(clk, nextXState, nextYState)
begin
		if(rising_edge(clk)) then
				currentXState <= nextXState;
				currentYState <= nextYState;
		end if;
end process;


Transition_Section: process(xmotion, ymotion)
begin
		if(xmotion = '0' AND extender_out = '0') then
				nextXState <= s0;
		end if;
		if(ymotion = '0' AND extender_out = '0') then
				nextYState <= s2;
		end if;
		if(xeq = '1') then
				nextXState <= s1;
		end if;
		if(yeq = '1') then
				nextYState <= s3;
		end if;
		
end process;


Decoder_Section: process(currentXState, currentYState, extender_out, xgt, xlt, xeq, ygt, ylt, yeq)
begin
		if(xeq = '1' AND yeq = '1' AND currentXState = s1 AND currentYState = s3) then
				extender_enable <= '1';
		else
				extender_enable <= '0';
		end if;
		if((xeq = '1' AND xmotion = '0') OR (yeq = '1' AND ymotion = '0') OR (extender_out = '1' AND(xmotion = '0' OR ymotion = '0'))) then
				error <= '1';
		else
				error <= '0';
		end if;
		if(extender_out = '0') then
				if(xgt = '1' AND currentXState = s0) then
						xclk_en <= '1';
						xupdown <= '0';
				elsif(xlt = '1' AND currentXState = s0) then
						xclk_en <= '1';
						xupdown <= '1';
				else
						xclk_en <= '0';
				end if;
				
				if(ygt = '1' AND currentYState = s2) then
						yclk_en <= '1';
						yupdown <= '0';
				elsif(ylt = '1' AND currentYState = s2) then
						yclk_en <= '1';
						yupdown <= '1';
				else
						yclk_en <= '0';
				end if;
		end if;
		if(currentXState = s1) then
				selectX <= '0';
		else
				selectX <= '1';
		end if;
		if(currentYState = s3) then
				selectY <= '0';
		else
				selectY <= '1';
		end if;
end process;

end architecture Mealy;
		


			