library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Bin_Counter4bit is port (									-- Here we defined our inputs and outputs
		Main_clk				: in std_logic := '0';				-- Input for the clock display on the board
		rst_n					: in std_logic := '0';				-- The reset latch on the flipflop
		clk_en					: in std_logic := '0';              -- The other clock display on the board
		up1_down0				: in std_logic := '0';				-- The common input signal for all shift registers
		counter_bits			: out std_logic_vector(3 downto 0)	-- Output for showing number of bits
);
End entity;

Architecture one Of Bin_Counter4bit is
	Signal ud_bin_counter		: UNSIGNED(3 downto 0);				-- The LED signal for the output
	
Begin

Process (Main_clk, rst_n, Up1_down0) is
Begin
	if(rst_n = '0') then											-- When the reset latch is on, set the signal to 0
			ud_bin_counter <= "0000";									
	elsif(rising_edge(Main_clk)) then								-- Returns true when signal changes from low to high
			if((up1_down0 = '1') AND (clk_en = '1')) then 			-- If the output display the shift register doesnt'  
																	-- match what is on the clock, increase the value of
																	-- the counter by 1 
					ud_bin_counter <= (ud_bin_counter +1);
			elsif((up1_down0 = '0') AND (clk_en = '1')) then		-- If the output display the shift register doesn't  
																	-- match 0, decrease the value of the counter by 1 
					ud_bin_counter <= (ud_bin_counter -1);
			end if;
	end if;
	counter_bits <= std_logic_vector(ud_bin_counter);				-- Set counter_bits to be equal to the output
End Process;
End;