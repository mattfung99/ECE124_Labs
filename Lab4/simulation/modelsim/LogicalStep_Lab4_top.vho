<<<<<<< HEAD
-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/06/2018 16:40:50"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MooreState1|currentState.s0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \YComparator|AEQB~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \YComparator|AGTB~0_combout\ : std_logic;
SIGNAL \YComparator|AEQB~combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \MooreState1|currentState.s0~clkctrl_outclk\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \MealState|xclk_en~0_combout\ : std_logic;
SIGNAL \MealState|xclk_en~3_combout\ : std_logic;
SIGNAL \MealState|xclk_en~combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[0]~11_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[1]~4_cout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[1]~6\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[2]~7_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[2]~8\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[3]~9_combout\ : std_logic;
SIGNAL \XComparator|AGTB~1_combout\ : std_logic;
SIGNAL \XComparator|AGTB~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \MealState|xclk_en~1_combout\ : std_logic;
SIGNAL \MealState|xclk_en~2_combout\ : std_logic;
SIGNAL \MealState|xupdown~0_combout\ : std_logic;
SIGNAL \XComparator|AGTB~2_combout\ : std_logic;
SIGNAL \XComparator|AGTB~3_combout\ : std_logic;
SIGNAL \MealState|xupdown~combout\ : std_logic;
SIGNAL \XCounter|process_0~0_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[1]~5_combout\ : std_logic;
SIGNAL \XComparator|AEQB~0_combout\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \MealState|comb~1_combout\ : std_logic;
SIGNAL \XComparator|AEQB~combout\ : std_logic;
SIGNAL \MealState|nextXState~combout\ : std_logic;
SIGNAL \MealState|currentXState~q\ : std_logic;
SIGNAL \MealState|extender_enable~0_combout\ : std_logic;
SIGNAL \MealState|extender_enable~1_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \BidirReg|sreg~1_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s2~0_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s2~1_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s2~q\ : std_logic;
SIGNAL \MooreState1|nextState.s1~0_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s1~q\ : std_logic;
SIGNAL \MooreState1|shiftClk_en~0_combout\ : std_logic;
SIGNAL \BidirReg|sreg~2_combout\ : std_logic;
SIGNAL \BidirReg|sreg~3_combout\ : std_logic;
SIGNAL \MooreState1|Transition_Section~0_combout\ : std_logic;
SIGNAL \MooreState1|Transition_Section~1_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s3~2_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s3~q\ : std_logic;
SIGNAL \MooreState1|direction~2_combout\ : std_logic;
SIGNAL \MooreState1|direction~combout\ : std_logic;
SIGNAL \BidirReg|sreg~0_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s3~0_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s3~1_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s0~q\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \MealState|comb~0_combout\ : std_logic;
SIGNAL \MealState|nextYState~combout\ : std_logic;
SIGNAL \MealState|currentYState~q\ : std_logic;
SIGNAL \MealState|yclk_en~1_combout\ : std_logic;
SIGNAL \YComparator|AGTB~1_combout\ : std_logic;
SIGNAL \MealState|yclk_en~2_combout\ : std_logic;
SIGNAL \MealState|yclk_en~0_combout\ : std_logic;
SIGNAL \MealState|yclk_en~3_combout\ : std_logic;
SIGNAL \MealState|yclk_en~combout\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \YComparator|AGTB~2_combout\ : std_logic;
SIGNAL \YComparator|AGTB~3_combout\ : std_logic;
SIGNAL \MealState|yupdown~0_combout\ : std_logic;
SIGNAL \MealState|yupdown~combout\ : std_logic;
SIGNAL \YCounter|process_0~0_combout\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \YMUX|output[2]~2_combout\ : std_logic;
SIGNAL \YMUX|output[3]~3_combout\ : std_logic;
SIGNAL \YMUX|output[0]~0_combout\ : std_logic;
SIGNAL \YMUX|output[1]~1_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux5~0_combout\ : std_logic;
SIGNAL \XMUX|output[1]~1_combout\ : std_logic;
SIGNAL \XMUX|output[2]~2_combout\ : std_logic;
SIGNAL \XMUX|output[0]~0_combout\ : std_logic;
SIGNAL \XMUX|output[3]~3_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux5~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux1~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux1~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux0~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux0~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \MealState|error~0_combout\ : std_logic;
SIGNAL \MealState|error~1_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \MooreState2|nextState.s2~0_combout\ : std_logic;
SIGNAL \MooreState2|currentState.s2~q\ : std_logic;
SIGNAL \YSevenSeg|Mux6~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux6~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[0]~0_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux4~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux4~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[2]~2_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux3~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux3~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[3]~3_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux2~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux2~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[4]~4_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \YCounter|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \BidirReg|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7mux|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \seg7mux|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \seg7mux|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \seg7mux|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_bin_counter : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MooreState1|currentState.s0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MooreState1|currentState.s0~q\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));
\seg7mux|ALT_INV_DOUT[4]~4_combout\ <= NOT \seg7mux|DOUT[4]~4_combout\;
\seg7mux|ALT_INV_DOUT[3]~3_combout\ <= NOT \seg7mux|DOUT[3]~3_combout\;
\seg7mux|ALT_INV_DOUT[2]~2_combout\ <= NOT \seg7mux|DOUT[2]~2_combout\;
\seg7mux|ALT_INV_DOUT[0]~0_combout\ <= NOT \seg7mux|DOUT[0]~0_combout\;
ALT_INV_bin_counter(10) <= NOT bin_counter(10);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MealState|error~1_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MooreState2|currentState.s2~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y9_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X7_Y9_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X7_Y9_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X7_Y9_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X7_Y9_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X7_Y9_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X7_Y9_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X7_Y9_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X7_Y9_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X7_Y9_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X7_Y9_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X7_Y9_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X7_Y9_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X7_Y9_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X7_Y9_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X7_Y9_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X7_Y9_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X7_Y9_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X7_Y9_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X7_Y9_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X7_Y9_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X7_Y9_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X7_Y9_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X7_Y9_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X7_Y8_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X7_Y8_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X7_Y8_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X7_Y8_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X7_Y8_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X7_Y8_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X7_Y8_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X7_Y8_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X7_Y8_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X7_Y8_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X7_Y8_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X7_Y8_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X7_Y8_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X7_Y8_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X7_Y8_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X7_Y8_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X7_Y8_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X7_Y8_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X7_Y8_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X7_Y8_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X7_Y8_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X7_Y8_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X7_Y8_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = \bin_counter[22]~66\ $ (!bin_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X7_Y8_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X12_Y8_N0
\YCounter|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[1]~5_cout\ = CARRY(\YCounter|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YCounter|ud_bin_counter\(0),
	datad => VCC,
	cout => \YCounter|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X12_Y8_N2
\YCounter|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[1]~6_combout\ = (\YCounter|process_0~0_combout\ & ((\YCounter|ud_bin_counter\(1) & (!\YCounter|ud_bin_counter[1]~5_cout\)) # (!\YCounter|ud_bin_counter\(1) & ((\YCounter|ud_bin_counter[1]~5_cout\) # (GND))))) # 
-- (!\YCounter|process_0~0_combout\ & ((\YCounter|ud_bin_counter\(1) & (\YCounter|ud_bin_counter[1]~5_cout\ & VCC)) # (!\YCounter|ud_bin_counter\(1) & (!\YCounter|ud_bin_counter[1]~5_cout\))))
-- \YCounter|ud_bin_counter[1]~7\ = CARRY((\YCounter|process_0~0_combout\ & ((!\YCounter|ud_bin_counter[1]~5_cout\) # (!\YCounter|ud_bin_counter\(1)))) # (!\YCounter|process_0~0_combout\ & (!\YCounter|ud_bin_counter\(1) & 
-- !\YCounter|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|process_0~0_combout\,
	datab => \YCounter|ud_bin_counter\(1),
	datad => VCC,
	cin => \YCounter|ud_bin_counter[1]~5_cout\,
	combout => \YCounter|ud_bin_counter[1]~6_combout\,
	cout => \YCounter|ud_bin_counter[1]~7\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X12_Y8_N3
\YCounter|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|yclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(1));

-- Location: LCCOMB_X11_Y8_N0
\YComparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AEQB~0_combout\ = (\sw[1]~input_o\ & ((\YCounter|ud_bin_counter\(0) $ (\sw[0]~input_o\)) # (!\YCounter|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & ((\YCounter|ud_bin_counter\(1)) # (\YCounter|ud_bin_counter\(0) $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \YCounter|ud_bin_counter\(0),
	datac => \sw[0]~input_o\,
	datad => \YCounter|ud_bin_counter\(1),
	combout => \YComparator|AEQB~0_combout\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X12_Y8_N4
\YCounter|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[2]~8_combout\ = ((\YCounter|process_0~0_combout\ $ (\YCounter|ud_bin_counter\(2) $ (\YCounter|ud_bin_counter[1]~7\)))) # (GND)
-- \YCounter|ud_bin_counter[2]~9\ = CARRY((\YCounter|process_0~0_combout\ & (\YCounter|ud_bin_counter\(2) & !\YCounter|ud_bin_counter[1]~7\)) # (!\YCounter|process_0~0_combout\ & ((\YCounter|ud_bin_counter\(2)) # (!\YCounter|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|process_0~0_combout\,
	datab => \YCounter|ud_bin_counter\(2),
	datad => VCC,
	cin => \YCounter|ud_bin_counter[1]~7\,
	combout => \YCounter|ud_bin_counter[2]~8_combout\,
	cout => \YCounter|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X12_Y8_N6
\YCounter|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[3]~10_combout\ = \YCounter|ud_bin_counter\(3) $ (\YCounter|ud_bin_counter[2]~9\ $ (!\YCounter|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|ud_bin_counter\(3),
	datad => \YCounter|process_0~0_combout\,
	cin => \YCounter|ud_bin_counter[2]~9\,
	combout => \YCounter|ud_bin_counter[3]~10_combout\);

-- Location: FF_X12_Y8_N7
\YCounter|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|yclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(3));

-- Location: LCCOMB_X12_Y8_N18
\YComparator|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~0_combout\ = (\sw[2]~input_o\ & (\YCounter|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\YCounter|ud_bin_counter\(3))))) # (!\sw[2]~input_o\ & (!\YCounter|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\YCounter|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \YCounter|ud_bin_counter\(2),
	datad => \YCounter|ud_bin_counter\(3),
	combout => \YComparator|AGTB~0_combout\);

-- Location: LCCOMB_X12_Y9_N28
\YComparator|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AEQB~combout\ = (\YComparator|AEQB~0_combout\) # (!\YComparator|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YComparator|AEQB~0_combout\,
	datac => \YComparator|AGTB~0_combout\,
	combout => \YComparator|AEQB~combout\);

-- Location: CLKCTRL_G1
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: CLKCTRL_G2
\MooreState1|currentState.s0~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MooreState1|currentState.s0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MooreState1|currentState.s0~clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X10_Y9_N2
\MealState|xclk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~0_combout\ = (\sw[7]~input_o\ & (((!\XCounter|ud_bin_counter\(2) & \sw[6]~input_o\)) # (!\XCounter|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (!\XCounter|ud_bin_counter\(2) & (\sw[6]~input_o\ & !\XCounter|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \XCounter|ud_bin_counter\(2),
	datac => \sw[6]~input_o\,
	datad => \XCounter|ud_bin_counter\(3),
	combout => \MealState|xclk_en~0_combout\);

-- Location: LCCOMB_X11_Y9_N20
\MealState|xclk_en~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~3_combout\ = (!\MealState|currentXState~q\ & ((\MealState|xclk_en~0_combout\) # (\MealState|xclk_en~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|xclk_en~0_combout\,
	datac => \MealState|xclk_en~2_combout\,
	datad => \MealState|currentXState~q\,
	combout => \MealState|xclk_en~3_combout\);

-- Location: LCCOMB_X10_Y9_N10
\MealState|xclk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~combout\ = (GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & (\MealState|xclk_en~combout\)) # (!GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & ((\MealState|xclk_en~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|xclk_en~combout\,
	datac => \MooreState1|currentState.s0~clkctrl_outclk\,
	datad => \MealState|xclk_en~3_combout\,
	combout => \MealState|xclk_en~combout\);

-- Location: LCCOMB_X10_Y9_N6
\XCounter|ud_bin_counter[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[0]~11_combout\ = \MealState|xclk_en~combout\ $ (\XCounter|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|xclk_en~combout\,
	datac => \XCounter|ud_bin_counter\(0),
	combout => \XCounter|ud_bin_counter[0]~11_combout\);

-- Location: FF_X10_Y9_N7
\XCounter|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[0]~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(0));

-- Location: LCCOMB_X10_Y9_N12
\XCounter|ud_bin_counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[1]~4_cout\ = CARRY(\XCounter|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(0),
	datad => VCC,
	cout => \XCounter|ud_bin_counter[1]~4_cout\);

-- Location: LCCOMB_X10_Y9_N14
\XCounter|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[1]~5_combout\ = (\XCounter|ud_bin_counter\(1) & ((\XCounter|process_0~0_combout\ & (!\XCounter|ud_bin_counter[1]~4_cout\)) # (!\XCounter|process_0~0_combout\ & (\XCounter|ud_bin_counter[1]~4_cout\ & VCC)))) # 
-- (!\XCounter|ud_bin_counter\(1) & ((\XCounter|process_0~0_combout\ & ((\XCounter|ud_bin_counter[1]~4_cout\) # (GND))) # (!\XCounter|process_0~0_combout\ & (!\XCounter|ud_bin_counter[1]~4_cout\))))
-- \XCounter|ud_bin_counter[1]~6\ = CARRY((\XCounter|ud_bin_counter\(1) & (\XCounter|process_0~0_combout\ & !\XCounter|ud_bin_counter[1]~4_cout\)) # (!\XCounter|ud_bin_counter\(1) & ((\XCounter|process_0~0_combout\) # 
-- (!\XCounter|ud_bin_counter[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(1),
	datab => \XCounter|process_0~0_combout\,
	datad => VCC,
	cin => \XCounter|ud_bin_counter[1]~4_cout\,
	combout => \XCounter|ud_bin_counter[1]~5_combout\,
	cout => \XCounter|ud_bin_counter[1]~6\);

-- Location: LCCOMB_X10_Y9_N16
\XCounter|ud_bin_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[2]~7_combout\ = ((\XCounter|ud_bin_counter\(2) $ (\XCounter|process_0~0_combout\ $ (\XCounter|ud_bin_counter[1]~6\)))) # (GND)
-- \XCounter|ud_bin_counter[2]~8\ = CARRY((\XCounter|ud_bin_counter\(2) & ((!\XCounter|ud_bin_counter[1]~6\) # (!\XCounter|process_0~0_combout\))) # (!\XCounter|ud_bin_counter\(2) & (!\XCounter|process_0~0_combout\ & !\XCounter|ud_bin_counter[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(2),
	datab => \XCounter|process_0~0_combout\,
	datad => VCC,
	cin => \XCounter|ud_bin_counter[1]~6\,
	combout => \XCounter|ud_bin_counter[2]~7_combout\,
	cout => \XCounter|ud_bin_counter[2]~8\);

-- Location: FF_X10_Y9_N17
\XCounter|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[2]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|xclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(2));

-- Location: LCCOMB_X10_Y9_N18
\XCounter|ud_bin_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[3]~9_combout\ = \XCounter|ud_bin_counter\(3) $ (\XCounter|ud_bin_counter[2]~8\ $ (!\XCounter|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \XCounter|ud_bin_counter\(3),
	datad => \XCounter|process_0~0_combout\,
	cin => \XCounter|ud_bin_counter[2]~8\,
	combout => \XCounter|ud_bin_counter[3]~9_combout\);

-- Location: FF_X10_Y9_N19
\XCounter|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[3]~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|xclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(3));

-- Location: LCCOMB_X10_Y9_N24
\XComparator|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~1_combout\ = (\sw[7]~input_o\ & (\XCounter|ud_bin_counter\(3) & (!\sw[6]~input_o\ & \XCounter|ud_bin_counter\(2)))) # (!\sw[7]~input_o\ & ((\XCounter|ud_bin_counter\(3)) # ((!\sw[6]~input_o\ & \XCounter|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \XCounter|ud_bin_counter\(3),
	datac => \sw[6]~input_o\,
	datad => \XCounter|ud_bin_counter\(2),
	combout => \XComparator|AGTB~1_combout\);

-- Location: LCCOMB_X10_Y9_N4
\XComparator|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~0_combout\ = (\sw[7]~input_o\ & (\XCounter|ud_bin_counter\(3) & (\XCounter|ud_bin_counter\(2) $ (!\sw[6]~input_o\)))) # (!\sw[7]~input_o\ & (!\XCounter|ud_bin_counter\(3) & (\XCounter|ud_bin_counter\(2) $ (!\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \XCounter|ud_bin_counter\(2),
	datac => \sw[6]~input_o\,
	datad => \XCounter|ud_bin_counter\(3),
	combout => \XComparator|AGTB~0_combout\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X10_Y9_N20
\MealState|xclk_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~1_combout\ = (\sw[4]~input_o\ & ((\sw[5]~input_o\ $ (\XCounter|ud_bin_counter\(1))) # (!\XCounter|ud_bin_counter\(0)))) # (!\sw[4]~input_o\ & ((\XCounter|ud_bin_counter\(0)) # (\sw[5]~input_o\ $ (\XCounter|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \XCounter|ud_bin_counter\(1),
	datad => \XCounter|ud_bin_counter\(0),
	combout => \MealState|xclk_en~1_combout\);

-- Location: LCCOMB_X10_Y9_N0
\MealState|xclk_en~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~2_combout\ = (\XComparator|AGTB~1_combout\) # ((\XComparator|AGTB~0_combout\ & \MealState|xclk_en~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XComparator|AGTB~1_combout\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MealState|xclk_en~1_combout\,
	combout => \MealState|xclk_en~2_combout\);

-- Location: LCCOMB_X10_Y9_N26
\MealState|xupdown~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xupdown~0_combout\ = (!\MooreState1|currentState.s0~q\ & (!\MealState|currentXState~q\ & ((\MealState|xclk_en~2_combout\) # (\MealState|xclk_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s0~q\,
	datab => \MealState|xclk_en~2_combout\,
	datac => \MealState|currentXState~q\,
	datad => \MealState|xclk_en~0_combout\,
	combout => \MealState|xupdown~0_combout\);

-- Location: LCCOMB_X10_Y9_N8
\XComparator|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~2_combout\ = (\sw[5]~input_o\ & (\XCounter|ud_bin_counter\(0) & (\XCounter|ud_bin_counter\(1) & !\sw[4]~input_o\))) # (!\sw[5]~input_o\ & ((\XCounter|ud_bin_counter\(1)) # ((\XCounter|ud_bin_counter\(0) & !\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(0),
	datab => \sw[5]~input_o\,
	datac => \XCounter|ud_bin_counter\(1),
	datad => \sw[4]~input_o\,
	combout => \XComparator|AGTB~2_combout\);

-- Location: LCCOMB_X10_Y9_N22
\XComparator|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~3_combout\ = (\XComparator|AGTB~1_combout\) # ((\XComparator|AGTB~2_combout\ & \XComparator|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XComparator|AGTB~1_combout\,
	datac => \XComparator|AGTB~2_combout\,
	datad => \XComparator|AGTB~0_combout\,
	combout => \XComparator|AGTB~3_combout\);

-- Location: LCCOMB_X10_Y9_N30
\MealState|xupdown\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xupdown~combout\ = (\MealState|xupdown~0_combout\ & ((!\XComparator|AGTB~3_combout\))) # (!\MealState|xupdown~0_combout\ & (\MealState|xupdown~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|xupdown~combout\,
	datab => \MealState|xupdown~0_combout\,
	datad => \XComparator|AGTB~3_combout\,
	combout => \MealState|xupdown~combout\);

-- Location: LCCOMB_X10_Y9_N28
\XCounter|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|process_0~0_combout\ = (\MealState|xupdown~combout\ & \MealState|xclk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MealState|xupdown~combout\,
	datad => \MealState|xclk_en~combout\,
	combout => \XCounter|process_0~0_combout\);

-- Location: FF_X10_Y9_N15
\XCounter|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[1]~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|xclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(1));

-- Location: LCCOMB_X11_Y9_N14
\XComparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AEQB~0_combout\ = (\XCounter|ud_bin_counter\(1) & ((\sw[4]~input_o\ $ (\XCounter|ud_bin_counter\(0))) # (!\sw[5]~input_o\))) # (!\XCounter|ud_bin_counter\(1) & ((\sw[5]~input_o\) # (\sw[4]~input_o\ $ (\XCounter|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(1),
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \XCounter|ud_bin_counter\(0),
	combout => \XComparator|AEQB~0_combout\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: LCCOMB_X12_Y9_N30
\MealState|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|comb~1_combout\ = (!\pb[3]~input_o\ & (!\MooreState1|currentState.s0~q\ & ((\XComparator|AEQB~0_combout\) # (!\XComparator|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XComparator|AEQB~0_combout\,
	datab => \pb[3]~input_o\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MooreState1|currentState.s0~q\,
	combout => \MealState|comb~1_combout\);

-- Location: LCCOMB_X11_Y9_N30
\XComparator|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AEQB~combout\ = (\XComparator|AEQB~0_combout\) # (!\XComparator|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XComparator|AEQB~0_combout\,
	datac => \XComparator|AGTB~0_combout\,
	combout => \XComparator|AEQB~combout\);

-- Location: LCCOMB_X11_Y9_N28
\MealState|nextXState\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|nextXState~combout\ = (!\MealState|comb~1_combout\ & ((\MealState|nextXState~combout\) # (!\XComparator|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|comb~1_combout\,
	datac => \XComparator|AEQB~combout\,
	datad => \MealState|nextXState~combout\,
	combout => \MealState|nextXState~combout\);

-- Location: FF_X10_Y9_N27
\MealState|currentXState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	asdata => \MealState|nextXState~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MealState|currentXState~q\);

-- Location: LCCOMB_X11_Y9_N10
\MealState|extender_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|extender_enable~0_combout\ = (\MealState|currentXState~q\ & \MealState|currentYState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MealState|currentXState~q\,
	datad => \MealState|currentYState~q\,
	combout => \MealState|extender_enable~0_combout\);

-- Location: LCCOMB_X11_Y9_N6
\MealState|extender_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|extender_enable~1_combout\ = (!\YComparator|AEQB~0_combout\ & (\XComparator|AGTB~0_combout\ & (!\XComparator|AEQB~0_combout\ & \YComparator|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AEQB~0_combout\,
	datab => \XComparator|AGTB~0_combout\,
	datac => \XComparator|AEQB~0_combout\,
	datad => \YComparator|AGTB~0_combout\,
	combout => \MealState|extender_enable~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X12_Y9_N12
\BidirReg|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~1_combout\ = (\MooreState1|direction~combout\ & ((\BidirReg|sreg\(2)))) # (!\MooreState1|direction~combout\ & (\BidirReg|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|direction~combout\,
	datab => \BidirReg|sreg\(0),
	datad => \BidirReg|sreg\(2),
	combout => \BidirReg|sreg~1_combout\);

-- Location: LCCOMB_X12_Y9_N24
\MooreState1|nextState.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s2~0_combout\ = (\BidirReg|sreg\(1) & (\BidirReg|sreg\(0) & (\BidirReg|sreg\(2) & \BidirReg|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirReg|sreg\(1),
	datab => \BidirReg|sreg\(0),
	datac => \BidirReg|sreg\(2),
	datad => \BidirReg|sreg\(3),
	combout => \MooreState1|nextState.s2~0_combout\);

-- Location: LCCOMB_X11_Y9_N2
\MooreState1|nextState.s2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s2~1_combout\ = (\MealState|extender_enable~0_combout\ & (\MooreState1|nextState.s2~0_combout\ & (!\pb[1]~input_o\ & \MealState|extender_enable~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \MooreState1|nextState.s2~0_combout\,
	datac => \pb[1]~input_o\,
	datad => \MealState|extender_enable~1_combout\,
	combout => \MooreState1|nextState.s2~1_combout\);

-- Location: FF_X11_Y9_N3
\MooreState1|currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MooreState1|nextState.s2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s2~q\);

-- Location: LCCOMB_X11_Y9_N12
\MooreState1|nextState.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s1~0_combout\ = (\MealState|extender_enable~0_combout\ & (!\MooreState1|nextState.s2~0_combout\ & (!\pb[1]~input_o\ & \MealState|extender_enable~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \MooreState1|nextState.s2~0_combout\,
	datac => \pb[1]~input_o\,
	datad => \MealState|extender_enable~1_combout\,
	combout => \MooreState1|nextState.s1~0_combout\);

-- Location: FF_X11_Y9_N13
\MooreState1|currentState.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \MooreState1|nextState.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s1~q\);

-- Location: LCCOMB_X12_Y9_N8
\MooreState1|shiftClk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|shiftClk_en~0_combout\ = (\MooreState1|currentState.s0~q\ & ((\MooreState1|currentState.s1~q\) # (!\MooreState1|currentState.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s2~q\,
	datac => \MooreState1|currentState.s1~q\,
	datad => \MooreState1|currentState.s0~q\,
	combout => \MooreState1|shiftClk_en~0_combout\);

-- Location: FF_X12_Y9_N13
\BidirReg|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(1));

-- Location: LCCOMB_X12_Y9_N26
\BidirReg|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~2_combout\ = (\MooreState1|direction~combout\ & ((\BidirReg|sreg\(3)))) # (!\MooreState1|direction~combout\ & (\BidirReg|sreg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirReg|sreg\(1),
	datac => \MooreState1|direction~combout\,
	datad => \BidirReg|sreg\(3),
	combout => \BidirReg|sreg~2_combout\);

-- Location: FF_X12_Y9_N27
\BidirReg|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(2));

-- Location: LCCOMB_X12_Y9_N0
\BidirReg|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~3_combout\ = (\MooreState1|direction~combout\) # (\BidirReg|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MooreState1|direction~combout\,
	datad => \BidirReg|sreg\(2),
	combout => \BidirReg|sreg~3_combout\);

-- Location: FF_X12_Y9_N1
\BidirReg|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(3));

-- Location: LCCOMB_X12_Y9_N20
\MooreState1|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|Transition_Section~0_combout\ = (\pb[1]~input_o\ & (!\BidirReg|sreg\(3) & (!\BidirReg|sreg\(2) & !\BidirReg|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \BidirReg|sreg\(3),
	datac => \BidirReg|sreg\(2),
	datad => \BidirReg|sreg\(1),
	combout => \MooreState1|Transition_Section~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\MooreState1|Transition_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|Transition_Section~1_combout\ = (!\BidirReg|sreg\(0) & \MooreState1|Transition_Section~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BidirReg|sreg\(0),
	datad => \MooreState1|Transition_Section~0_combout\,
	combout => \MooreState1|Transition_Section~1_combout\);

-- Location: LCCOMB_X12_Y9_N2
\MooreState1|nextState.s3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s3~2_combout\ = (\MealState|extender_enable~0_combout\ & (\MealState|extender_enable~1_combout\ & (\pb[1]~input_o\ & !\MooreState1|Transition_Section~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \MealState|extender_enable~1_combout\,
	datac => \pb[1]~input_o\,
	datad => \MooreState1|Transition_Section~1_combout\,
	combout => \MooreState1|nextState.s3~2_combout\);

-- Location: FF_X12_Y9_N3
\MooreState1|currentState.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \MooreState1|nextState.s3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s3~q\);

-- Location: LCCOMB_X11_Y9_N24
\MooreState1|direction~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|direction~2_combout\ = (\MooreState1|currentState.s0~q\ & ((\MooreState1|currentState.s3~q\) # (\MooreState1|currentState.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s3~q\,
	datab => \MooreState1|currentState.s0~q\,
	datad => \MooreState1|currentState.s1~q\,
	combout => \MooreState1|direction~2_combout\);

-- Location: LCCOMB_X11_Y9_N26
\MooreState1|direction\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|direction~combout\ = (\MooreState1|direction~2_combout\ & ((\MooreState1|currentState.s1~q\))) # (!\MooreState1|direction~2_combout\ & (\MooreState1|direction~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|direction~2_combout\,
	datac => \MooreState1|direction~combout\,
	datad => \MooreState1|currentState.s1~q\,
	combout => \MooreState1|direction~combout\);

-- Location: LCCOMB_X12_Y9_N18
\BidirReg|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~0_combout\ = (\MooreState1|direction~combout\ & \BidirReg|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MooreState1|direction~combout\,
	datad => \BidirReg|sreg\(1),
	combout => \BidirReg|sreg~0_combout\);

-- Location: FF_X12_Y9_N19
\BidirReg|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(0));

-- Location: LCCOMB_X12_Y9_N10
\MooreState1|nextState.s3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s3~0_combout\ = (!\YComparator|AEQB~0_combout\ & (\YComparator|AGTB~0_combout\ & ((\BidirReg|sreg\(0)) # (!\MooreState1|Transition_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirReg|sreg\(0),
	datab => \YComparator|AEQB~0_combout\,
	datac => \YComparator|AGTB~0_combout\,
	datad => \MooreState1|Transition_Section~0_combout\,
	combout => \MooreState1|nextState.s3~0_combout\);

-- Location: LCCOMB_X11_Y9_N4
\MooreState1|nextState.s3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s3~1_combout\ = (\MealState|extender_enable~0_combout\ & (!\XComparator|AEQB~0_combout\ & (\XComparator|AGTB~0_combout\ & \MooreState1|nextState.s3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \XComparator|AEQB~0_combout\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MooreState1|nextState.s3~0_combout\,
	combout => \MooreState1|nextState.s3~1_combout\);

-- Location: FF_X11_Y9_N5
\MooreState1|currentState.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MooreState1|nextState.s3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s0~q\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: LCCOMB_X12_Y9_N14
\MealState|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|comb~0_combout\ = (!\MooreState1|currentState.s0~q\ & (!\pb[2]~input_o\ & ((\YComparator|AEQB~0_combout\) # (!\YComparator|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s0~q\,
	datab => \pb[2]~input_o\,
	datac => \YComparator|AGTB~0_combout\,
	datad => \YComparator|AEQB~0_combout\,
	combout => \MealState|comb~0_combout\);

-- Location: LCCOMB_X11_Y9_N0
\MealState|nextYState\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|nextYState~combout\ = (!\MealState|comb~0_combout\ & ((\MealState|nextYState~combout\) # (!\YComparator|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AEQB~combout\,
	datac => \MealState|comb~0_combout\,
	datad => \MealState|nextYState~combout\,
	combout => \MealState|nextYState~combout\);

-- Location: FF_X11_Y8_N25
\MealState|currentYState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	asdata => \MealState|nextYState~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MealState|currentYState~q\);

-- Location: LCCOMB_X12_Y8_N30
\MealState|yclk_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~1_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\YCounter|ud_bin_counter\(0))) # (!\YCounter|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\YCounter|ud_bin_counter\(0) & !\YCounter|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \YCounter|ud_bin_counter\(0),
	datad => \YCounter|ud_bin_counter\(1),
	combout => \MealState|yclk_en~1_combout\);

-- Location: LCCOMB_X12_Y8_N8
\YComparator|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~1_combout\ = (\sw[3]~input_o\ & (!\sw[2]~input_o\ & (\YCounter|ud_bin_counter\(2) & \YCounter|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & ((\YCounter|ud_bin_counter\(3)) # ((!\sw[2]~input_o\ & \YCounter|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \YCounter|ud_bin_counter\(2),
	datad => \YCounter|ud_bin_counter\(3),
	combout => \YComparator|AGTB~1_combout\);

-- Location: LCCOMB_X12_Y8_N16
\MealState|yclk_en~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~2_combout\ = (\YComparator|AGTB~1_combout\) # ((\YComparator|AGTB~0_combout\ & ((\MealState|yclk_en~1_combout\) # (\YComparator|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|yclk_en~1_combout\,
	datab => \YComparator|AGTB~1_combout\,
	datac => \YComparator|AGTB~2_combout\,
	datad => \YComparator|AGTB~0_combout\,
	combout => \MealState|yclk_en~2_combout\);

-- Location: LCCOMB_X12_Y8_N10
\MealState|yclk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~0_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\YCounter|ud_bin_counter\(2))) # (!\YCounter|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\YCounter|ud_bin_counter\(2) & !\YCounter|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \YCounter|ud_bin_counter\(2),
	datad => \YCounter|ud_bin_counter\(3),
	combout => \MealState|yclk_en~0_combout\);

-- Location: LCCOMB_X12_Y8_N20
\MealState|yclk_en~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~3_combout\ = (!\MealState|currentYState~q\ & ((\MealState|yclk_en~2_combout\) # (\MealState|yclk_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentYState~q\,
	datac => \MealState|yclk_en~2_combout\,
	datad => \MealState|yclk_en~0_combout\,
	combout => \MealState|yclk_en~3_combout\);

-- Location: LCCOMB_X12_Y8_N24
\MealState|yclk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~combout\ = (GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & (\MealState|yclk_en~combout\)) # (!GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & ((\MealState|yclk_en~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|yclk_en~combout\,
	datac => \MealState|yclk_en~3_combout\,
	datad => \MooreState1|currentState.s0~clkctrl_outclk\,
	combout => \MealState|yclk_en~combout\);

-- Location: LCCOMB_X12_Y8_N14
\YCounter|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[0]~3_combout\ = \YCounter|ud_bin_counter\(0) $ (\MealState|yclk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \YCounter|ud_bin_counter\(0),
	datad => \MealState|yclk_en~combout\,
	combout => \YCounter|ud_bin_counter[0]~3_combout\);

-- Location: FF_X12_Y8_N15
\YCounter|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(0));

-- Location: LCCOMB_X12_Y8_N22
\YComparator|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~2_combout\ = (\sw[1]~input_o\ & (!\sw[0]~input_o\ & (\YCounter|ud_bin_counter\(0) & \YCounter|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & ((\YCounter|ud_bin_counter\(1)) # ((!\sw[0]~input_o\ & \YCounter|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \YCounter|ud_bin_counter\(0),
	datad => \YCounter|ud_bin_counter\(1),
	combout => \YComparator|AGTB~2_combout\);

-- Location: LCCOMB_X12_Y8_N12
\YComparator|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~3_combout\ = (\YComparator|AGTB~1_combout\) # ((\YComparator|AGTB~2_combout\ & \YComparator|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AGTB~2_combout\,
	datac => \YComparator|AGTB~1_combout\,
	datad => \YComparator|AGTB~0_combout\,
	combout => \YComparator|AGTB~3_combout\);

-- Location: LCCOMB_X11_Y8_N28
\MealState|yupdown~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yupdown~0_combout\ = (!\MooreState1|currentState.s0~q\ & (!\MealState|currentYState~q\ & ((\MealState|yclk_en~2_combout\) # (\MealState|yclk_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s0~q\,
	datab => \MealState|yclk_en~2_combout\,
	datac => \MealState|yclk_en~0_combout\,
	datad => \MealState|currentYState~q\,
	combout => \MealState|yupdown~0_combout\);

-- Location: LCCOMB_X12_Y8_N28
\MealState|yupdown\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yupdown~combout\ = (\MealState|yupdown~0_combout\ & (!\YComparator|AGTB~3_combout\)) # (!\MealState|yupdown~0_combout\ & ((\MealState|yupdown~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AGTB~3_combout\,
	datab => \MealState|yupdown~0_combout\,
	datad => \MealState|yupdown~combout\,
	combout => \MealState|yupdown~combout\);

-- Location: LCCOMB_X12_Y8_N26
\YCounter|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|process_0~0_combout\ = (\MealState|yupdown~combout\ & \MealState|yclk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|yupdown~combout\,
	datad => \MealState|yclk_en~combout\,
	combout => \YCounter|process_0~0_combout\);

-- Location: FF_X12_Y8_N5
\YCounter|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|yclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(2));

-- Location: LCCOMB_X11_Y10_N26
\YMUX|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[2]~2_combout\ = (\MealState|currentYState~q\ & ((\sw[2]~input_o\))) # (!\MealState|currentYState~q\ & (\YCounter|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|ud_bin_counter\(2),
	datac => \sw[2]~input_o\,
	datad => \MealState|currentYState~q\,
	combout => \YMUX|output[2]~2_combout\);

-- Location: LCCOMB_X11_Y10_N16
\YMUX|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[3]~3_combout\ = (\MealState|currentYState~q\ & ((\sw[3]~input_o\))) # (!\MealState|currentYState~q\ & (\YCounter|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentYState~q\,
	datac => \YCounter|ud_bin_counter\(3),
	datad => \sw[3]~input_o\,
	combout => \YMUX|output[3]~3_combout\);

-- Location: LCCOMB_X11_Y8_N26
\YMUX|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[0]~0_combout\ = (\MealState|currentYState~q\ & (\sw[0]~input_o\)) # (!\MealState|currentYState~q\ & ((\YCounter|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \YCounter|ud_bin_counter\(0),
	datac => \MealState|currentYState~q\,
	combout => \YMUX|output[0]~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\YMUX|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[1]~1_combout\ = (\MealState|currentYState~q\ & ((\sw[1]~input_o\))) # (!\MealState|currentYState~q\ & (\YCounter|ud_bin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentYState~q\,
	datac => \YCounter|ud_bin_counter\(1),
	datad => \sw[1]~input_o\,
	combout => \YMUX|output[1]~1_combout\);

-- Location: LCCOMB_X11_Y10_N2
\YSevenSeg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux5~0_combout\ = (\YMUX|output[3]~3_combout\ & ((\YMUX|output[0]~0_combout\ & ((\YMUX|output[1]~1_combout\))) # (!\YMUX|output[0]~0_combout\ & (\YMUX|output[2]~2_combout\)))) # (!\YMUX|output[3]~3_combout\ & (\YMUX|output[2]~2_combout\ & 
-- (\YMUX|output[0]~0_combout\ $ (\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y9_N16
\XMUX|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[1]~1_combout\ = (\MealState|currentXState~q\ & ((\sw[5]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(1),
	datab => \sw[5]~input_o\,
	datac => \MealState|currentXState~q\,
	combout => \XMUX|output[1]~1_combout\);

-- Location: LCCOMB_X11_Y9_N18
\XMUX|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[2]~2_combout\ = (\MealState|currentXState~q\ & ((\sw[6]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|currentXState~q\,
	datac => \XCounter|ud_bin_counter\(2),
	datad => \sw[6]~input_o\,
	combout => \XMUX|output[2]~2_combout\);

-- Location: LCCOMB_X11_Y9_N22
\XMUX|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[0]~0_combout\ = (\MealState|currentXState~q\ & ((\sw[4]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentXState~q\,
	datab => \XCounter|ud_bin_counter\(0),
	datac => \sw[4]~input_o\,
	combout => \XMUX|output[0]~0_combout\);

-- Location: LCCOMB_X12_Y9_N6
\XMUX|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[3]~3_combout\ = (\MealState|currentXState~q\ & ((\sw[7]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(3),
	datab => \MealState|currentXState~q\,
	datad => \sw[7]~input_o\,
	combout => \XMUX|output[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N28
\XSevenSeg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux5~0_combout\ = (\XMUX|output[1]~1_combout\ & ((\XMUX|output[0]~0_combout\ & ((\XMUX|output[3]~3_combout\))) # (!\XMUX|output[0]~0_combout\ & (\XMUX|output[2]~2_combout\)))) # (!\XMUX|output[1]~1_combout\ & (\XMUX|output[2]~2_combout\ & 
-- (\XMUX|output[0]~0_combout\ $ (\XMUX|output[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y12_N26
\seg7mux|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT_TEMP[1]~0_combout\ = (bin_counter(10) & (!\YSevenSeg|Mux5~0_combout\)) # (!bin_counter(10) & ((!\XSevenSeg|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YSevenSeg|Mux5~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux5~0_combout\,
	combout => \seg7mux|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\YSevenSeg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux1~0_combout\ = (\YMUX|output[2]~2_combout\ & ((\YMUX|output[3]~3_combout\ & ((!\YMUX|output[1]~1_combout\))) # (!\YMUX|output[3]~3_combout\ & (\YMUX|output[0]~0_combout\ & \YMUX|output[1]~1_combout\)))) # (!\YMUX|output[2]~2_combout\ & 
-- (!\YMUX|output[3]~3_combout\ & ((\YMUX|output[0]~0_combout\) # (\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y12_N20
\XSevenSeg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux1~0_combout\ = (\XMUX|output[1]~1_combout\ & (!\XMUX|output[3]~3_combout\ & ((\XMUX|output[0]~0_combout\) # (!\XMUX|output[2]~2_combout\)))) # (!\XMUX|output[1]~1_combout\ & ((\XMUX|output[2]~2_combout\ & ((\XMUX|output[3]~3_combout\))) # 
-- (!\XMUX|output[2]~2_combout\ & (\XMUX|output[0]~0_combout\ & !\XMUX|output[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\seg7mux|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT_TEMP[5]~1_combout\ = (bin_counter(10) & (!\YSevenSeg|Mux1~0_combout\)) # (!bin_counter(10) & ((!\XSevenSeg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YSevenSeg|Mux1~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux1~0_combout\,
	combout => \seg7mux|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y10_N12
\YSevenSeg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux0~0_combout\ = (\YMUX|output[3]~3_combout\) # ((\YMUX|output[2]~2_combout\ & ((!\YMUX|output[1]~1_combout\) # (!\YMUX|output[0]~0_combout\))) # (!\YMUX|output[2]~2_combout\ & ((\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y12_N22
\XSevenSeg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux0~0_combout\ = (\XMUX|output[3]~3_combout\) # ((\XMUX|output[1]~1_combout\ & ((!\XMUX|output[0]~0_combout\) # (!\XMUX|output[2]~2_combout\))) # (!\XMUX|output[1]~1_combout\ & (\XMUX|output[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N6
\seg7mux|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT_TEMP[6]~2_combout\ = (bin_counter(10) & (\YSevenSeg|Mux0~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YSevenSeg|Mux0~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux0~0_combout\,
	combout => \seg7mux|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X12_Y9_N22
\MealState|error~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|error~0_combout\ = (!\pb[3]~input_o\ & ((\MooreState1|currentState.s0~q\) # ((!\XComparator|AEQB~0_combout\ & \XComparator|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XComparator|AEQB~0_combout\,
	datab => \pb[3]~input_o\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MooreState1|currentState.s0~q\,
	combout => \MealState|error~0_combout\);

-- Location: LCCOMB_X12_Y9_N4
\MealState|error~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|error~1_combout\ = (\MealState|error~0_combout\) # ((!\pb[2]~input_o\ & ((\MooreState1|currentState.s0~q\) # (!\YComparator|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|error~0_combout\,
	datab => \pb[2]~input_o\,
	datac => \MooreState1|currentState.s0~q\,
	datad => \YComparator|AEQB~combout\,
	combout => \MealState|error~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X11_Y9_N8
\MooreState2|nextState.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState2|nextState.s2~0_combout\ = (\MooreState1|currentState.s2~q\ & (\pb[0]~input_o\ $ (!\MooreState2|currentState.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \MooreState1|currentState.s2~q\,
	datac => \MooreState2|currentState.s2~q\,
	combout => \MooreState2|nextState.s2~0_combout\);

-- Location: FF_X11_Y9_N9
\MooreState2|currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MooreState2|nextState.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState2|currentState.s2~q\);

-- Location: LCCOMB_X11_Y10_N10
\YSevenSeg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux6~0_combout\ = (\YMUX|output[2]~2_combout\ & (!\YMUX|output[1]~1_combout\ & ((\YMUX|output[3]~3_combout\) # (!\YMUX|output[0]~0_combout\)))) # (!\YMUX|output[2]~2_combout\ & (\YMUX|output[0]~0_combout\ & (\YMUX|output[3]~3_combout\ $ 
-- (!\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y12_N16
\XSevenSeg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux6~0_combout\ = (\XMUX|output[1]~1_combout\ & (!\XMUX|output[2]~2_combout\ & (\XMUX|output[0]~0_combout\ & \XMUX|output[3]~3_combout\))) # (!\XMUX|output[1]~1_combout\ & (\XMUX|output[2]~2_combout\ $ (((\XMUX|output[0]~0_combout\ & 
-- !\XMUX|output[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\seg7mux|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[0]~0_combout\ = (bin_counter(10) & (\YSevenSeg|Mux6~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YSevenSeg|Mux6~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux6~0_combout\,
	combout => \seg7mux|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y10_N0
\YSevenSeg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux4~0_combout\ = (\YMUX|output[2]~2_combout\ & (\YMUX|output[3]~3_combout\ & ((\YMUX|output[1]~1_combout\) # (!\YMUX|output[0]~0_combout\)))) # (!\YMUX|output[2]~2_combout\ & (!\YMUX|output[3]~3_combout\ & (!\YMUX|output[0]~0_combout\ & 
-- \YMUX|output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
\XSevenSeg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux4~0_combout\ = (\XMUX|output[2]~2_combout\ & (\XMUX|output[3]~3_combout\ & ((\XMUX|output[1]~1_combout\) # (!\XMUX|output[0]~0_combout\)))) # (!\XMUX|output[2]~2_combout\ & (\XMUX|output[1]~1_combout\ & (!\XMUX|output[0]~0_combout\ & 
-- !\XMUX|output[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y12_N30
\seg7mux|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[2]~2_combout\ = (bin_counter(10) & (\YSevenSeg|Mux4~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YSevenSeg|Mux4~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux4~0_combout\,
	combout => \seg7mux|DOUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y10_N22
\YSevenSeg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux3~0_combout\ = (\YMUX|output[1]~1_combout\ & ((\YMUX|output[2]~2_combout\ & ((\YMUX|output[0]~0_combout\))) # (!\YMUX|output[2]~2_combout\ & (\YMUX|output[3]~3_combout\ & !\YMUX|output[0]~0_combout\)))) # (!\YMUX|output[1]~1_combout\ & 
-- (!\YMUX|output[3]~3_combout\ & (\YMUX|output[2]~2_combout\ $ (\YMUX|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N24
\XSevenSeg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux3~0_combout\ = (\XMUX|output[1]~1_combout\ & ((\XMUX|output[2]~2_combout\ & (\XMUX|output[0]~0_combout\)) # (!\XMUX|output[2]~2_combout\ & (!\XMUX|output[0]~0_combout\ & \XMUX|output[3]~3_combout\)))) # (!\XMUX|output[1]~1_combout\ & 
-- (!\XMUX|output[3]~3_combout\ & (\XMUX|output[2]~2_combout\ $ (\XMUX|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\seg7mux|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[3]~3_combout\ = (bin_counter(10) & (\YSevenSeg|Mux3~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YSevenSeg|Mux3~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux3~0_combout\,
	combout => \seg7mux|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y10_N28
\YSevenSeg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux2~0_combout\ = (\YMUX|output[1]~1_combout\ & (((!\YMUX|output[3]~3_combout\ & \YMUX|output[0]~0_combout\)))) # (!\YMUX|output[1]~1_combout\ & ((\YMUX|output[2]~2_combout\ & (!\YMUX|output[3]~3_combout\)) # (!\YMUX|output[2]~2_combout\ & 
-- ((\YMUX|output[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y12_N8
\XSevenSeg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux2~0_combout\ = (\XMUX|output[1]~1_combout\ & (((\XMUX|output[0]~0_combout\ & !\XMUX|output[3]~3_combout\)))) # (!\XMUX|output[1]~1_combout\ & ((\XMUX|output[2]~2_combout\ & ((!\XMUX|output[3]~3_combout\))) # (!\XMUX|output[2]~2_combout\ & 
-- (\XMUX|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
\seg7mux|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[4]~4_combout\ = (bin_counter(10) & (\YSevenSeg|Mux2~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(10),
	datab => \YSevenSeg|Mux2~0_combout\,
	datac => \XSevenSeg|Mux2~0_combout\,
	combout => \seg7mux|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


=======
-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/06/2018 16:40:50"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MooreState1|currentState.s0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \YComparator|AEQB~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \YComparator|AGTB~0_combout\ : std_logic;
SIGNAL \YComparator|AEQB~combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \MooreState1|currentState.s0~clkctrl_outclk\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \MealState|xclk_en~0_combout\ : std_logic;
SIGNAL \MealState|xclk_en~3_combout\ : std_logic;
SIGNAL \MealState|xclk_en~combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[0]~11_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[1]~4_cout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[1]~6\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[2]~7_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[2]~8\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[3]~9_combout\ : std_logic;
SIGNAL \XComparator|AGTB~1_combout\ : std_logic;
SIGNAL \XComparator|AGTB~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \MealState|xclk_en~1_combout\ : std_logic;
SIGNAL \MealState|xclk_en~2_combout\ : std_logic;
SIGNAL \MealState|xupdown~0_combout\ : std_logic;
SIGNAL \XComparator|AGTB~2_combout\ : std_logic;
SIGNAL \XComparator|AGTB~3_combout\ : std_logic;
SIGNAL \MealState|xupdown~combout\ : std_logic;
SIGNAL \XCounter|process_0~0_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter[1]~5_combout\ : std_logic;
SIGNAL \XComparator|AEQB~0_combout\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \MealState|comb~1_combout\ : std_logic;
SIGNAL \XComparator|AEQB~combout\ : std_logic;
SIGNAL \MealState|nextXState~combout\ : std_logic;
SIGNAL \MealState|currentXState~q\ : std_logic;
SIGNAL \MealState|extender_enable~0_combout\ : std_logic;
SIGNAL \MealState|extender_enable~1_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \BidirReg|sreg~1_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s2~0_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s2~1_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s2~q\ : std_logic;
SIGNAL \MooreState1|nextState.s1~0_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s1~q\ : std_logic;
SIGNAL \MooreState1|shiftClk_en~0_combout\ : std_logic;
SIGNAL \BidirReg|sreg~2_combout\ : std_logic;
SIGNAL \BidirReg|sreg~3_combout\ : std_logic;
SIGNAL \MooreState1|Transition_Section~0_combout\ : std_logic;
SIGNAL \MooreState1|Transition_Section~1_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s3~2_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s3~q\ : std_logic;
SIGNAL \MooreState1|direction~2_combout\ : std_logic;
SIGNAL \MooreState1|direction~combout\ : std_logic;
SIGNAL \BidirReg|sreg~0_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s3~0_combout\ : std_logic;
SIGNAL \MooreState1|nextState.s3~1_combout\ : std_logic;
SIGNAL \MooreState1|currentState.s0~q\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \MealState|comb~0_combout\ : std_logic;
SIGNAL \MealState|nextYState~combout\ : std_logic;
SIGNAL \MealState|currentYState~q\ : std_logic;
SIGNAL \MealState|yclk_en~1_combout\ : std_logic;
SIGNAL \YComparator|AGTB~1_combout\ : std_logic;
SIGNAL \MealState|yclk_en~2_combout\ : std_logic;
SIGNAL \MealState|yclk_en~0_combout\ : std_logic;
SIGNAL \MealState|yclk_en~3_combout\ : std_logic;
SIGNAL \MealState|yclk_en~combout\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \YComparator|AGTB~2_combout\ : std_logic;
SIGNAL \YComparator|AGTB~3_combout\ : std_logic;
SIGNAL \MealState|yupdown~0_combout\ : std_logic;
SIGNAL \MealState|yupdown~combout\ : std_logic;
SIGNAL \YCounter|process_0~0_combout\ : std_logic;
SIGNAL \YCounter|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \YMUX|output[2]~2_combout\ : std_logic;
SIGNAL \YMUX|output[3]~3_combout\ : std_logic;
SIGNAL \YMUX|output[0]~0_combout\ : std_logic;
SIGNAL \YMUX|output[1]~1_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux5~0_combout\ : std_logic;
SIGNAL \XMUX|output[1]~1_combout\ : std_logic;
SIGNAL \XMUX|output[2]~2_combout\ : std_logic;
SIGNAL \XMUX|output[0]~0_combout\ : std_logic;
SIGNAL \XMUX|output[3]~3_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux5~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux1~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux1~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux0~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux0~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \MealState|error~0_combout\ : std_logic;
SIGNAL \MealState|error~1_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \MooreState2|nextState.s2~0_combout\ : std_logic;
SIGNAL \MooreState2|currentState.s2~q\ : std_logic;
SIGNAL \YSevenSeg|Mux6~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux6~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[0]~0_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux4~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux4~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[2]~2_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux3~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux3~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[3]~3_combout\ : std_logic;
SIGNAL \YSevenSeg|Mux2~0_combout\ : std_logic;
SIGNAL \XSevenSeg|Mux2~0_combout\ : std_logic;
SIGNAL \seg7mux|DOUT[4]~4_combout\ : std_logic;
SIGNAL \XCounter|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \YCounter|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \BidirReg|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7mux|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \seg7mux|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \seg7mux|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \seg7mux|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_bin_counter : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MooreState1|currentState.s0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MooreState1|currentState.s0~q\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));
\seg7mux|ALT_INV_DOUT[4]~4_combout\ <= NOT \seg7mux|DOUT[4]~4_combout\;
\seg7mux|ALT_INV_DOUT[3]~3_combout\ <= NOT \seg7mux|DOUT[3]~3_combout\;
\seg7mux|ALT_INV_DOUT[2]~2_combout\ <= NOT \seg7mux|DOUT[2]~2_combout\;
\seg7mux|ALT_INV_DOUT[0]~0_combout\ <= NOT \seg7mux|DOUT[0]~0_combout\;
ALT_INV_bin_counter(10) <= NOT bin_counter(10);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MealState|error~1_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MooreState2|currentState.s2~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BidirReg|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7mux|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y9_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X7_Y9_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X7_Y9_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X7_Y9_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X7_Y9_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X7_Y9_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X7_Y9_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X7_Y9_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X7_Y9_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X7_Y9_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X7_Y9_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X7_Y9_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X7_Y9_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X7_Y9_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X7_Y9_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X7_Y9_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X7_Y9_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X7_Y9_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X7_Y9_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X7_Y9_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X7_Y9_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X7_Y9_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X7_Y9_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X7_Y9_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X7_Y8_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X7_Y8_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X7_Y8_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X7_Y8_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X7_Y8_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X7_Y8_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X7_Y8_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X7_Y8_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X7_Y8_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X7_Y8_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X7_Y8_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X7_Y8_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X7_Y8_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X7_Y8_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X7_Y8_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X7_Y8_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X7_Y8_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X7_Y8_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X7_Y8_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X7_Y8_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X7_Y8_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X7_Y8_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X7_Y8_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = \bin_counter[22]~66\ $ (!bin_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X7_Y8_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X12_Y8_N0
\YCounter|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[1]~5_cout\ = CARRY(\YCounter|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YCounter|ud_bin_counter\(0),
	datad => VCC,
	cout => \YCounter|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X12_Y8_N2
\YCounter|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[1]~6_combout\ = (\YCounter|process_0~0_combout\ & ((\YCounter|ud_bin_counter\(1) & (!\YCounter|ud_bin_counter[1]~5_cout\)) # (!\YCounter|ud_bin_counter\(1) & ((\YCounter|ud_bin_counter[1]~5_cout\) # (GND))))) # 
-- (!\YCounter|process_0~0_combout\ & ((\YCounter|ud_bin_counter\(1) & (\YCounter|ud_bin_counter[1]~5_cout\ & VCC)) # (!\YCounter|ud_bin_counter\(1) & (!\YCounter|ud_bin_counter[1]~5_cout\))))
-- \YCounter|ud_bin_counter[1]~7\ = CARRY((\YCounter|process_0~0_combout\ & ((!\YCounter|ud_bin_counter[1]~5_cout\) # (!\YCounter|ud_bin_counter\(1)))) # (!\YCounter|process_0~0_combout\ & (!\YCounter|ud_bin_counter\(1) & 
-- !\YCounter|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|process_0~0_combout\,
	datab => \YCounter|ud_bin_counter\(1),
	datad => VCC,
	cin => \YCounter|ud_bin_counter[1]~5_cout\,
	combout => \YCounter|ud_bin_counter[1]~6_combout\,
	cout => \YCounter|ud_bin_counter[1]~7\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X12_Y8_N3
\YCounter|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|yclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(1));

-- Location: LCCOMB_X11_Y8_N0
\YComparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AEQB~0_combout\ = (\sw[1]~input_o\ & ((\YCounter|ud_bin_counter\(0) $ (\sw[0]~input_o\)) # (!\YCounter|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & ((\YCounter|ud_bin_counter\(1)) # (\YCounter|ud_bin_counter\(0) $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \YCounter|ud_bin_counter\(0),
	datac => \sw[0]~input_o\,
	datad => \YCounter|ud_bin_counter\(1),
	combout => \YComparator|AEQB~0_combout\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X12_Y8_N4
\YCounter|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[2]~8_combout\ = ((\YCounter|process_0~0_combout\ $ (\YCounter|ud_bin_counter\(2) $ (\YCounter|ud_bin_counter[1]~7\)))) # (GND)
-- \YCounter|ud_bin_counter[2]~9\ = CARRY((\YCounter|process_0~0_combout\ & (\YCounter|ud_bin_counter\(2) & !\YCounter|ud_bin_counter[1]~7\)) # (!\YCounter|process_0~0_combout\ & ((\YCounter|ud_bin_counter\(2)) # (!\YCounter|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|process_0~0_combout\,
	datab => \YCounter|ud_bin_counter\(2),
	datad => VCC,
	cin => \YCounter|ud_bin_counter[1]~7\,
	combout => \YCounter|ud_bin_counter[2]~8_combout\,
	cout => \YCounter|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X12_Y8_N6
\YCounter|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[3]~10_combout\ = \YCounter|ud_bin_counter\(3) $ (\YCounter|ud_bin_counter[2]~9\ $ (!\YCounter|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|ud_bin_counter\(3),
	datad => \YCounter|process_0~0_combout\,
	cin => \YCounter|ud_bin_counter[2]~9\,
	combout => \YCounter|ud_bin_counter[3]~10_combout\);

-- Location: FF_X12_Y8_N7
\YCounter|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|yclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(3));

-- Location: LCCOMB_X12_Y8_N18
\YComparator|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~0_combout\ = (\sw[2]~input_o\ & (\YCounter|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\YCounter|ud_bin_counter\(3))))) # (!\sw[2]~input_o\ & (!\YCounter|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\YCounter|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \YCounter|ud_bin_counter\(2),
	datad => \YCounter|ud_bin_counter\(3),
	combout => \YComparator|AGTB~0_combout\);

-- Location: LCCOMB_X12_Y9_N28
\YComparator|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AEQB~combout\ = (\YComparator|AEQB~0_combout\) # (!\YComparator|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YComparator|AEQB~0_combout\,
	datac => \YComparator|AGTB~0_combout\,
	combout => \YComparator|AEQB~combout\);

-- Location: CLKCTRL_G1
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: CLKCTRL_G2
\MooreState1|currentState.s0~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MooreState1|currentState.s0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MooreState1|currentState.s0~clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X10_Y9_N2
\MealState|xclk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~0_combout\ = (\sw[7]~input_o\ & (((!\XCounter|ud_bin_counter\(2) & \sw[6]~input_o\)) # (!\XCounter|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (!\XCounter|ud_bin_counter\(2) & (\sw[6]~input_o\ & !\XCounter|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \XCounter|ud_bin_counter\(2),
	datac => \sw[6]~input_o\,
	datad => \XCounter|ud_bin_counter\(3),
	combout => \MealState|xclk_en~0_combout\);

-- Location: LCCOMB_X11_Y9_N20
\MealState|xclk_en~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~3_combout\ = (!\MealState|currentXState~q\ & ((\MealState|xclk_en~0_combout\) # (\MealState|xclk_en~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|xclk_en~0_combout\,
	datac => \MealState|xclk_en~2_combout\,
	datad => \MealState|currentXState~q\,
	combout => \MealState|xclk_en~3_combout\);

-- Location: LCCOMB_X10_Y9_N10
\MealState|xclk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~combout\ = (GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & (\MealState|xclk_en~combout\)) # (!GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & ((\MealState|xclk_en~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|xclk_en~combout\,
	datac => \MooreState1|currentState.s0~clkctrl_outclk\,
	datad => \MealState|xclk_en~3_combout\,
	combout => \MealState|xclk_en~combout\);

-- Location: LCCOMB_X10_Y9_N6
\XCounter|ud_bin_counter[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[0]~11_combout\ = \MealState|xclk_en~combout\ $ (\XCounter|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|xclk_en~combout\,
	datac => \XCounter|ud_bin_counter\(0),
	combout => \XCounter|ud_bin_counter[0]~11_combout\);

-- Location: FF_X10_Y9_N7
\XCounter|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[0]~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(0));

-- Location: LCCOMB_X10_Y9_N12
\XCounter|ud_bin_counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[1]~4_cout\ = CARRY(\XCounter|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(0),
	datad => VCC,
	cout => \XCounter|ud_bin_counter[1]~4_cout\);

-- Location: LCCOMB_X10_Y9_N14
\XCounter|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[1]~5_combout\ = (\XCounter|ud_bin_counter\(1) & ((\XCounter|process_0~0_combout\ & (!\XCounter|ud_bin_counter[1]~4_cout\)) # (!\XCounter|process_0~0_combout\ & (\XCounter|ud_bin_counter[1]~4_cout\ & VCC)))) # 
-- (!\XCounter|ud_bin_counter\(1) & ((\XCounter|process_0~0_combout\ & ((\XCounter|ud_bin_counter[1]~4_cout\) # (GND))) # (!\XCounter|process_0~0_combout\ & (!\XCounter|ud_bin_counter[1]~4_cout\))))
-- \XCounter|ud_bin_counter[1]~6\ = CARRY((\XCounter|ud_bin_counter\(1) & (\XCounter|process_0~0_combout\ & !\XCounter|ud_bin_counter[1]~4_cout\)) # (!\XCounter|ud_bin_counter\(1) & ((\XCounter|process_0~0_combout\) # 
-- (!\XCounter|ud_bin_counter[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(1),
	datab => \XCounter|process_0~0_combout\,
	datad => VCC,
	cin => \XCounter|ud_bin_counter[1]~4_cout\,
	combout => \XCounter|ud_bin_counter[1]~5_combout\,
	cout => \XCounter|ud_bin_counter[1]~6\);

-- Location: LCCOMB_X10_Y9_N16
\XCounter|ud_bin_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[2]~7_combout\ = ((\XCounter|ud_bin_counter\(2) $ (\XCounter|process_0~0_combout\ $ (\XCounter|ud_bin_counter[1]~6\)))) # (GND)
-- \XCounter|ud_bin_counter[2]~8\ = CARRY((\XCounter|ud_bin_counter\(2) & ((!\XCounter|ud_bin_counter[1]~6\) # (!\XCounter|process_0~0_combout\))) # (!\XCounter|ud_bin_counter\(2) & (!\XCounter|process_0~0_combout\ & !\XCounter|ud_bin_counter[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(2),
	datab => \XCounter|process_0~0_combout\,
	datad => VCC,
	cin => \XCounter|ud_bin_counter[1]~6\,
	combout => \XCounter|ud_bin_counter[2]~7_combout\,
	cout => \XCounter|ud_bin_counter[2]~8\);

-- Location: FF_X10_Y9_N17
\XCounter|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[2]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|xclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(2));

-- Location: LCCOMB_X10_Y9_N18
\XCounter|ud_bin_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|ud_bin_counter[3]~9_combout\ = \XCounter|ud_bin_counter\(3) $ (\XCounter|ud_bin_counter[2]~8\ $ (!\XCounter|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \XCounter|ud_bin_counter\(3),
	datad => \XCounter|process_0~0_combout\,
	cin => \XCounter|ud_bin_counter[2]~8\,
	combout => \XCounter|ud_bin_counter[3]~9_combout\);

-- Location: FF_X10_Y9_N19
\XCounter|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[3]~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|xclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(3));

-- Location: LCCOMB_X10_Y9_N24
\XComparator|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~1_combout\ = (\sw[7]~input_o\ & (\XCounter|ud_bin_counter\(3) & (!\sw[6]~input_o\ & \XCounter|ud_bin_counter\(2)))) # (!\sw[7]~input_o\ & ((\XCounter|ud_bin_counter\(3)) # ((!\sw[6]~input_o\ & \XCounter|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \XCounter|ud_bin_counter\(3),
	datac => \sw[6]~input_o\,
	datad => \XCounter|ud_bin_counter\(2),
	combout => \XComparator|AGTB~1_combout\);

-- Location: LCCOMB_X10_Y9_N4
\XComparator|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~0_combout\ = (\sw[7]~input_o\ & (\XCounter|ud_bin_counter\(3) & (\XCounter|ud_bin_counter\(2) $ (!\sw[6]~input_o\)))) # (!\sw[7]~input_o\ & (!\XCounter|ud_bin_counter\(3) & (\XCounter|ud_bin_counter\(2) $ (!\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \XCounter|ud_bin_counter\(2),
	datac => \sw[6]~input_o\,
	datad => \XCounter|ud_bin_counter\(3),
	combout => \XComparator|AGTB~0_combout\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X10_Y9_N20
\MealState|xclk_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~1_combout\ = (\sw[4]~input_o\ & ((\sw[5]~input_o\ $ (\XCounter|ud_bin_counter\(1))) # (!\XCounter|ud_bin_counter\(0)))) # (!\sw[4]~input_o\ & ((\XCounter|ud_bin_counter\(0)) # (\sw[5]~input_o\ $ (\XCounter|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \XCounter|ud_bin_counter\(1),
	datad => \XCounter|ud_bin_counter\(0),
	combout => \MealState|xclk_en~1_combout\);

-- Location: LCCOMB_X10_Y9_N0
\MealState|xclk_en~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xclk_en~2_combout\ = (\XComparator|AGTB~1_combout\) # ((\XComparator|AGTB~0_combout\ & \MealState|xclk_en~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XComparator|AGTB~1_combout\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MealState|xclk_en~1_combout\,
	combout => \MealState|xclk_en~2_combout\);

-- Location: LCCOMB_X10_Y9_N26
\MealState|xupdown~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xupdown~0_combout\ = (!\MooreState1|currentState.s0~q\ & (!\MealState|currentXState~q\ & ((\MealState|xclk_en~2_combout\) # (\MealState|xclk_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s0~q\,
	datab => \MealState|xclk_en~2_combout\,
	datac => \MealState|currentXState~q\,
	datad => \MealState|xclk_en~0_combout\,
	combout => \MealState|xupdown~0_combout\);

-- Location: LCCOMB_X10_Y9_N8
\XComparator|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~2_combout\ = (\sw[5]~input_o\ & (\XCounter|ud_bin_counter\(0) & (\XCounter|ud_bin_counter\(1) & !\sw[4]~input_o\))) # (!\sw[5]~input_o\ & ((\XCounter|ud_bin_counter\(1)) # ((\XCounter|ud_bin_counter\(0) & !\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(0),
	datab => \sw[5]~input_o\,
	datac => \XCounter|ud_bin_counter\(1),
	datad => \sw[4]~input_o\,
	combout => \XComparator|AGTB~2_combout\);

-- Location: LCCOMB_X10_Y9_N22
\XComparator|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AGTB~3_combout\ = (\XComparator|AGTB~1_combout\) # ((\XComparator|AGTB~2_combout\ & \XComparator|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XComparator|AGTB~1_combout\,
	datac => \XComparator|AGTB~2_combout\,
	datad => \XComparator|AGTB~0_combout\,
	combout => \XComparator|AGTB~3_combout\);

-- Location: LCCOMB_X10_Y9_N30
\MealState|xupdown\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|xupdown~combout\ = (\MealState|xupdown~0_combout\ & ((!\XComparator|AGTB~3_combout\))) # (!\MealState|xupdown~0_combout\ & (\MealState|xupdown~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|xupdown~combout\,
	datab => \MealState|xupdown~0_combout\,
	datad => \XComparator|AGTB~3_combout\,
	combout => \MealState|xupdown~combout\);

-- Location: LCCOMB_X10_Y9_N28
\XCounter|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XCounter|process_0~0_combout\ = (\MealState|xupdown~combout\ & \MealState|xclk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MealState|xupdown~combout\,
	datad => \MealState|xclk_en~combout\,
	combout => \XCounter|process_0~0_combout\);

-- Location: FF_X10_Y9_N15
\XCounter|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \XCounter|ud_bin_counter[1]~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|xclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XCounter|ud_bin_counter\(1));

-- Location: LCCOMB_X11_Y9_N14
\XComparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AEQB~0_combout\ = (\XCounter|ud_bin_counter\(1) & ((\sw[4]~input_o\ $ (\XCounter|ud_bin_counter\(0))) # (!\sw[5]~input_o\))) # (!\XCounter|ud_bin_counter\(1) & ((\sw[5]~input_o\) # (\sw[4]~input_o\ $ (\XCounter|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(1),
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \XCounter|ud_bin_counter\(0),
	combout => \XComparator|AEQB~0_combout\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: LCCOMB_X12_Y9_N30
\MealState|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|comb~1_combout\ = (!\pb[3]~input_o\ & (!\MooreState1|currentState.s0~q\ & ((\XComparator|AEQB~0_combout\) # (!\XComparator|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XComparator|AEQB~0_combout\,
	datab => \pb[3]~input_o\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MooreState1|currentState.s0~q\,
	combout => \MealState|comb~1_combout\);

-- Location: LCCOMB_X11_Y9_N30
\XComparator|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XComparator|AEQB~combout\ = (\XComparator|AEQB~0_combout\) # (!\XComparator|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XComparator|AEQB~0_combout\,
	datac => \XComparator|AGTB~0_combout\,
	combout => \XComparator|AEQB~combout\);

-- Location: LCCOMB_X11_Y9_N28
\MealState|nextXState\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|nextXState~combout\ = (!\MealState|comb~1_combout\ & ((\MealState|nextXState~combout\) # (!\XComparator|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|comb~1_combout\,
	datac => \XComparator|AEQB~combout\,
	datad => \MealState|nextXState~combout\,
	combout => \MealState|nextXState~combout\);

-- Location: FF_X10_Y9_N27
\MealState|currentXState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	asdata => \MealState|nextXState~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MealState|currentXState~q\);

-- Location: LCCOMB_X11_Y9_N10
\MealState|extender_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|extender_enable~0_combout\ = (\MealState|currentXState~q\ & \MealState|currentYState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MealState|currentXState~q\,
	datad => \MealState|currentYState~q\,
	combout => \MealState|extender_enable~0_combout\);

-- Location: LCCOMB_X11_Y9_N6
\MealState|extender_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|extender_enable~1_combout\ = (!\YComparator|AEQB~0_combout\ & (\XComparator|AGTB~0_combout\ & (!\XComparator|AEQB~0_combout\ & \YComparator|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AEQB~0_combout\,
	datab => \XComparator|AGTB~0_combout\,
	datac => \XComparator|AEQB~0_combout\,
	datad => \YComparator|AGTB~0_combout\,
	combout => \MealState|extender_enable~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X12_Y9_N12
\BidirReg|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~1_combout\ = (\MooreState1|direction~combout\ & ((\BidirReg|sreg\(2)))) # (!\MooreState1|direction~combout\ & (\BidirReg|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|direction~combout\,
	datab => \BidirReg|sreg\(0),
	datad => \BidirReg|sreg\(2),
	combout => \BidirReg|sreg~1_combout\);

-- Location: LCCOMB_X12_Y9_N24
\MooreState1|nextState.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s2~0_combout\ = (\BidirReg|sreg\(1) & (\BidirReg|sreg\(0) & (\BidirReg|sreg\(2) & \BidirReg|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirReg|sreg\(1),
	datab => \BidirReg|sreg\(0),
	datac => \BidirReg|sreg\(2),
	datad => \BidirReg|sreg\(3),
	combout => \MooreState1|nextState.s2~0_combout\);

-- Location: LCCOMB_X11_Y9_N2
\MooreState1|nextState.s2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s2~1_combout\ = (\MealState|extender_enable~0_combout\ & (\MooreState1|nextState.s2~0_combout\ & (!\pb[1]~input_o\ & \MealState|extender_enable~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \MooreState1|nextState.s2~0_combout\,
	datac => \pb[1]~input_o\,
	datad => \MealState|extender_enable~1_combout\,
	combout => \MooreState1|nextState.s2~1_combout\);

-- Location: FF_X11_Y9_N3
\MooreState1|currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MooreState1|nextState.s2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s2~q\);

-- Location: LCCOMB_X11_Y9_N12
\MooreState1|nextState.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s1~0_combout\ = (\MealState|extender_enable~0_combout\ & (!\MooreState1|nextState.s2~0_combout\ & (!\pb[1]~input_o\ & \MealState|extender_enable~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \MooreState1|nextState.s2~0_combout\,
	datac => \pb[1]~input_o\,
	datad => \MealState|extender_enable~1_combout\,
	combout => \MooreState1|nextState.s1~0_combout\);

-- Location: FF_X11_Y9_N13
\MooreState1|currentState.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \MooreState1|nextState.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s1~q\);

-- Location: LCCOMB_X12_Y9_N8
\MooreState1|shiftClk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|shiftClk_en~0_combout\ = (\MooreState1|currentState.s0~q\ & ((\MooreState1|currentState.s1~q\) # (!\MooreState1|currentState.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s2~q\,
	datac => \MooreState1|currentState.s1~q\,
	datad => \MooreState1|currentState.s0~q\,
	combout => \MooreState1|shiftClk_en~0_combout\);

-- Location: FF_X12_Y9_N13
\BidirReg|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(1));

-- Location: LCCOMB_X12_Y9_N26
\BidirReg|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~2_combout\ = (\MooreState1|direction~combout\ & ((\BidirReg|sreg\(3)))) # (!\MooreState1|direction~combout\ & (\BidirReg|sreg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirReg|sreg\(1),
	datac => \MooreState1|direction~combout\,
	datad => \BidirReg|sreg\(3),
	combout => \BidirReg|sreg~2_combout\);

-- Location: FF_X12_Y9_N27
\BidirReg|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(2));

-- Location: LCCOMB_X12_Y9_N0
\BidirReg|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~3_combout\ = (\MooreState1|direction~combout\) # (\BidirReg|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MooreState1|direction~combout\,
	datad => \BidirReg|sreg\(2),
	combout => \BidirReg|sreg~3_combout\);

-- Location: FF_X12_Y9_N1
\BidirReg|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(3));

-- Location: LCCOMB_X12_Y9_N20
\MooreState1|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|Transition_Section~0_combout\ = (\pb[1]~input_o\ & (!\BidirReg|sreg\(3) & (!\BidirReg|sreg\(2) & !\BidirReg|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \BidirReg|sreg\(3),
	datac => \BidirReg|sreg\(2),
	datad => \BidirReg|sreg\(1),
	combout => \MooreState1|Transition_Section~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\MooreState1|Transition_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|Transition_Section~1_combout\ = (!\BidirReg|sreg\(0) & \MooreState1|Transition_Section~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BidirReg|sreg\(0),
	datad => \MooreState1|Transition_Section~0_combout\,
	combout => \MooreState1|Transition_Section~1_combout\);

-- Location: LCCOMB_X12_Y9_N2
\MooreState1|nextState.s3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s3~2_combout\ = (\MealState|extender_enable~0_combout\ & (\MealState|extender_enable~1_combout\ & (\pb[1]~input_o\ & !\MooreState1|Transition_Section~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \MealState|extender_enable~1_combout\,
	datac => \pb[1]~input_o\,
	datad => \MooreState1|Transition_Section~1_combout\,
	combout => \MooreState1|nextState.s3~2_combout\);

-- Location: FF_X12_Y9_N3
\MooreState1|currentState.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \MooreState1|nextState.s3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s3~q\);

-- Location: LCCOMB_X11_Y9_N24
\MooreState1|direction~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|direction~2_combout\ = (\MooreState1|currentState.s0~q\ & ((\MooreState1|currentState.s3~q\) # (\MooreState1|currentState.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s3~q\,
	datab => \MooreState1|currentState.s0~q\,
	datad => \MooreState1|currentState.s1~q\,
	combout => \MooreState1|direction~2_combout\);

-- Location: LCCOMB_X11_Y9_N26
\MooreState1|direction\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|direction~combout\ = (\MooreState1|direction~2_combout\ & ((\MooreState1|currentState.s1~q\))) # (!\MooreState1|direction~2_combout\ & (\MooreState1|direction~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|direction~2_combout\,
	datac => \MooreState1|direction~combout\,
	datad => \MooreState1|currentState.s1~q\,
	combout => \MooreState1|direction~combout\);

-- Location: LCCOMB_X12_Y9_N18
\BidirReg|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BidirReg|sreg~0_combout\ = (\MooreState1|direction~combout\ & \BidirReg|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MooreState1|direction~combout\,
	datad => \BidirReg|sreg\(1),
	combout => \BidirReg|sreg~0_combout\);

-- Location: FF_X12_Y9_N19
\BidirReg|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \BidirReg|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \MooreState1|shiftClk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BidirReg|sreg\(0));

-- Location: LCCOMB_X12_Y9_N10
\MooreState1|nextState.s3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s3~0_combout\ = (!\YComparator|AEQB~0_combout\ & (\YComparator|AGTB~0_combout\ & ((\BidirReg|sreg\(0)) # (!\MooreState1|Transition_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BidirReg|sreg\(0),
	datab => \YComparator|AEQB~0_combout\,
	datac => \YComparator|AGTB~0_combout\,
	datad => \MooreState1|Transition_Section~0_combout\,
	combout => \MooreState1|nextState.s3~0_combout\);

-- Location: LCCOMB_X11_Y9_N4
\MooreState1|nextState.s3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState1|nextState.s3~1_combout\ = (\MealState|extender_enable~0_combout\ & (!\XComparator|AEQB~0_combout\ & (\XComparator|AGTB~0_combout\ & \MooreState1|nextState.s3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|extender_enable~0_combout\,
	datab => \XComparator|AEQB~0_combout\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MooreState1|nextState.s3~0_combout\,
	combout => \MooreState1|nextState.s3~1_combout\);

-- Location: FF_X11_Y9_N5
\MooreState1|currentState.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MooreState1|nextState.s3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState1|currentState.s0~q\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: LCCOMB_X12_Y9_N14
\MealState|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|comb~0_combout\ = (!\MooreState1|currentState.s0~q\ & (!\pb[2]~input_o\ & ((\YComparator|AEQB~0_combout\) # (!\YComparator|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s0~q\,
	datab => \pb[2]~input_o\,
	datac => \YComparator|AGTB~0_combout\,
	datad => \YComparator|AEQB~0_combout\,
	combout => \MealState|comb~0_combout\);

-- Location: LCCOMB_X11_Y9_N0
\MealState|nextYState\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|nextYState~combout\ = (!\MealState|comb~0_combout\ & ((\MealState|nextYState~combout\) # (!\YComparator|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AEQB~combout\,
	datac => \MealState|comb~0_combout\,
	datad => \MealState|nextYState~combout\,
	combout => \MealState|nextYState~combout\);

-- Location: FF_X11_Y8_N25
\MealState|currentYState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	asdata => \MealState|nextYState~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MealState|currentYState~q\);

-- Location: LCCOMB_X12_Y8_N30
\MealState|yclk_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~1_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\YCounter|ud_bin_counter\(0))) # (!\YCounter|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\YCounter|ud_bin_counter\(0) & !\YCounter|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \YCounter|ud_bin_counter\(0),
	datad => \YCounter|ud_bin_counter\(1),
	combout => \MealState|yclk_en~1_combout\);

-- Location: LCCOMB_X12_Y8_N8
\YComparator|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~1_combout\ = (\sw[3]~input_o\ & (!\sw[2]~input_o\ & (\YCounter|ud_bin_counter\(2) & \YCounter|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & ((\YCounter|ud_bin_counter\(3)) # ((!\sw[2]~input_o\ & \YCounter|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \YCounter|ud_bin_counter\(2),
	datad => \YCounter|ud_bin_counter\(3),
	combout => \YComparator|AGTB~1_combout\);

-- Location: LCCOMB_X12_Y8_N16
\MealState|yclk_en~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~2_combout\ = (\YComparator|AGTB~1_combout\) # ((\YComparator|AGTB~0_combout\ & ((\MealState|yclk_en~1_combout\) # (\YComparator|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|yclk_en~1_combout\,
	datab => \YComparator|AGTB~1_combout\,
	datac => \YComparator|AGTB~2_combout\,
	datad => \YComparator|AGTB~0_combout\,
	combout => \MealState|yclk_en~2_combout\);

-- Location: LCCOMB_X12_Y8_N10
\MealState|yclk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~0_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\YCounter|ud_bin_counter\(2))) # (!\YCounter|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\YCounter|ud_bin_counter\(2) & !\YCounter|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \YCounter|ud_bin_counter\(2),
	datad => \YCounter|ud_bin_counter\(3),
	combout => \MealState|yclk_en~0_combout\);

-- Location: LCCOMB_X12_Y8_N20
\MealState|yclk_en~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~3_combout\ = (!\MealState|currentYState~q\ & ((\MealState|yclk_en~2_combout\) # (\MealState|yclk_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentYState~q\,
	datac => \MealState|yclk_en~2_combout\,
	datad => \MealState|yclk_en~0_combout\,
	combout => \MealState|yclk_en~3_combout\);

-- Location: LCCOMB_X12_Y8_N24
\MealState|yclk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yclk_en~combout\ = (GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & (\MealState|yclk_en~combout\)) # (!GLOBAL(\MooreState1|currentState.s0~clkctrl_outclk\) & ((\MealState|yclk_en~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|yclk_en~combout\,
	datac => \MealState|yclk_en~3_combout\,
	datad => \MooreState1|currentState.s0~clkctrl_outclk\,
	combout => \MealState|yclk_en~combout\);

-- Location: LCCOMB_X12_Y8_N14
\YCounter|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|ud_bin_counter[0]~3_combout\ = \YCounter|ud_bin_counter\(0) $ (\MealState|yclk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \YCounter|ud_bin_counter\(0),
	datad => \MealState|yclk_en~combout\,
	combout => \YCounter|ud_bin_counter[0]~3_combout\);

-- Location: FF_X12_Y8_N15
\YCounter|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(0));

-- Location: LCCOMB_X12_Y8_N22
\YComparator|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~2_combout\ = (\sw[1]~input_o\ & (!\sw[0]~input_o\ & (\YCounter|ud_bin_counter\(0) & \YCounter|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & ((\YCounter|ud_bin_counter\(1)) # ((!\sw[0]~input_o\ & \YCounter|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \YCounter|ud_bin_counter\(0),
	datad => \YCounter|ud_bin_counter\(1),
	combout => \YComparator|AGTB~2_combout\);

-- Location: LCCOMB_X12_Y8_N12
\YComparator|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YComparator|AGTB~3_combout\ = (\YComparator|AGTB~1_combout\) # ((\YComparator|AGTB~2_combout\ & \YComparator|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AGTB~2_combout\,
	datac => \YComparator|AGTB~1_combout\,
	datad => \YComparator|AGTB~0_combout\,
	combout => \YComparator|AGTB~3_combout\);

-- Location: LCCOMB_X11_Y8_N28
\MealState|yupdown~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yupdown~0_combout\ = (!\MooreState1|currentState.s0~q\ & (!\MealState|currentYState~q\ & ((\MealState|yclk_en~2_combout\) # (\MealState|yclk_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MooreState1|currentState.s0~q\,
	datab => \MealState|yclk_en~2_combout\,
	datac => \MealState|yclk_en~0_combout\,
	datad => \MealState|currentYState~q\,
	combout => \MealState|yupdown~0_combout\);

-- Location: LCCOMB_X12_Y8_N28
\MealState|yupdown\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|yupdown~combout\ = (\MealState|yupdown~0_combout\ & (!\YComparator|AGTB~3_combout\)) # (!\MealState|yupdown~0_combout\ & ((\MealState|yupdown~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YComparator|AGTB~3_combout\,
	datab => \MealState|yupdown~0_combout\,
	datad => \MealState|yupdown~combout\,
	combout => \MealState|yupdown~combout\);

-- Location: LCCOMB_X12_Y8_N26
\YCounter|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YCounter|process_0~0_combout\ = (\MealState|yupdown~combout\ & \MealState|yclk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|yupdown~combout\,
	datad => \MealState|yclk_en~combout\,
	combout => \YCounter|process_0~0_combout\);

-- Location: FF_X12_Y8_N5
\YCounter|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \YCounter|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \MealState|yclk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \YCounter|ud_bin_counter\(2));

-- Location: LCCOMB_X11_Y10_N26
\YMUX|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[2]~2_combout\ = (\MealState|currentYState~q\ & ((\sw[2]~input_o\))) # (!\MealState|currentYState~q\ & (\YCounter|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YCounter|ud_bin_counter\(2),
	datac => \sw[2]~input_o\,
	datad => \MealState|currentYState~q\,
	combout => \YMUX|output[2]~2_combout\);

-- Location: LCCOMB_X11_Y10_N16
\YMUX|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[3]~3_combout\ = (\MealState|currentYState~q\ & ((\sw[3]~input_o\))) # (!\MealState|currentYState~q\ & (\YCounter|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentYState~q\,
	datac => \YCounter|ud_bin_counter\(3),
	datad => \sw[3]~input_o\,
	combout => \YMUX|output[3]~3_combout\);

-- Location: LCCOMB_X11_Y8_N26
\YMUX|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[0]~0_combout\ = (\MealState|currentYState~q\ & (\sw[0]~input_o\)) # (!\MealState|currentYState~q\ & ((\YCounter|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \YCounter|ud_bin_counter\(0),
	datac => \MealState|currentYState~q\,
	combout => \YMUX|output[0]~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\YMUX|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YMUX|output[1]~1_combout\ = (\MealState|currentYState~q\ & ((\sw[1]~input_o\))) # (!\MealState|currentYState~q\ & (\YCounter|ud_bin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentYState~q\,
	datac => \YCounter|ud_bin_counter\(1),
	datad => \sw[1]~input_o\,
	combout => \YMUX|output[1]~1_combout\);

-- Location: LCCOMB_X11_Y10_N2
\YSevenSeg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux5~0_combout\ = (\YMUX|output[3]~3_combout\ & ((\YMUX|output[0]~0_combout\ & ((\YMUX|output[1]~1_combout\))) # (!\YMUX|output[0]~0_combout\ & (\YMUX|output[2]~2_combout\)))) # (!\YMUX|output[3]~3_combout\ & (\YMUX|output[2]~2_combout\ & 
-- (\YMUX|output[0]~0_combout\ $ (\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y9_N16
\XMUX|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[1]~1_combout\ = (\MealState|currentXState~q\ & ((\sw[5]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(1),
	datab => \sw[5]~input_o\,
	datac => \MealState|currentXState~q\,
	combout => \XMUX|output[1]~1_combout\);

-- Location: LCCOMB_X11_Y9_N18
\XMUX|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[2]~2_combout\ = (\MealState|currentXState~q\ & ((\sw[6]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MealState|currentXState~q\,
	datac => \XCounter|ud_bin_counter\(2),
	datad => \sw[6]~input_o\,
	combout => \XMUX|output[2]~2_combout\);

-- Location: LCCOMB_X11_Y9_N22
\XMUX|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[0]~0_combout\ = (\MealState|currentXState~q\ & ((\sw[4]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|currentXState~q\,
	datab => \XCounter|ud_bin_counter\(0),
	datac => \sw[4]~input_o\,
	combout => \XMUX|output[0]~0_combout\);

-- Location: LCCOMB_X12_Y9_N6
\XMUX|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XMUX|output[3]~3_combout\ = (\MealState|currentXState~q\ & ((\sw[7]~input_o\))) # (!\MealState|currentXState~q\ & (\XCounter|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XCounter|ud_bin_counter\(3),
	datab => \MealState|currentXState~q\,
	datad => \sw[7]~input_o\,
	combout => \XMUX|output[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N28
\XSevenSeg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux5~0_combout\ = (\XMUX|output[1]~1_combout\ & ((\XMUX|output[0]~0_combout\ & ((\XMUX|output[3]~3_combout\))) # (!\XMUX|output[0]~0_combout\ & (\XMUX|output[2]~2_combout\)))) # (!\XMUX|output[1]~1_combout\ & (\XMUX|output[2]~2_combout\ & 
-- (\XMUX|output[0]~0_combout\ $ (\XMUX|output[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y12_N26
\seg7mux|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT_TEMP[1]~0_combout\ = (bin_counter(10) & (!\YSevenSeg|Mux5~0_combout\)) # (!bin_counter(10) & ((!\XSevenSeg|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YSevenSeg|Mux5~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux5~0_combout\,
	combout => \seg7mux|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\YSevenSeg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux1~0_combout\ = (\YMUX|output[2]~2_combout\ & ((\YMUX|output[3]~3_combout\ & ((!\YMUX|output[1]~1_combout\))) # (!\YMUX|output[3]~3_combout\ & (\YMUX|output[0]~0_combout\ & \YMUX|output[1]~1_combout\)))) # (!\YMUX|output[2]~2_combout\ & 
-- (!\YMUX|output[3]~3_combout\ & ((\YMUX|output[0]~0_combout\) # (\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y12_N20
\XSevenSeg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux1~0_combout\ = (\XMUX|output[1]~1_combout\ & (!\XMUX|output[3]~3_combout\ & ((\XMUX|output[0]~0_combout\) # (!\XMUX|output[2]~2_combout\)))) # (!\XMUX|output[1]~1_combout\ & ((\XMUX|output[2]~2_combout\ & ((\XMUX|output[3]~3_combout\))) # 
-- (!\XMUX|output[2]~2_combout\ & (\XMUX|output[0]~0_combout\ & !\XMUX|output[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\seg7mux|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT_TEMP[5]~1_combout\ = (bin_counter(10) & (!\YSevenSeg|Mux1~0_combout\)) # (!bin_counter(10) & ((!\XSevenSeg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YSevenSeg|Mux1~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux1~0_combout\,
	combout => \seg7mux|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y10_N12
\YSevenSeg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux0~0_combout\ = (\YMUX|output[3]~3_combout\) # ((\YMUX|output[2]~2_combout\ & ((!\YMUX|output[1]~1_combout\) # (!\YMUX|output[0]~0_combout\))) # (!\YMUX|output[2]~2_combout\ & ((\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y12_N22
\XSevenSeg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux0~0_combout\ = (\XMUX|output[3]~3_combout\) # ((\XMUX|output[1]~1_combout\ & ((!\XMUX|output[0]~0_combout\) # (!\XMUX|output[2]~2_combout\))) # (!\XMUX|output[1]~1_combout\ & (\XMUX|output[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N6
\seg7mux|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT_TEMP[6]~2_combout\ = (bin_counter(10) & (\YSevenSeg|Mux0~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YSevenSeg|Mux0~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux0~0_combout\,
	combout => \seg7mux|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X12_Y9_N22
\MealState|error~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|error~0_combout\ = (!\pb[3]~input_o\ & ((\MooreState1|currentState.s0~q\) # ((!\XComparator|AEQB~0_combout\ & \XComparator|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XComparator|AEQB~0_combout\,
	datab => \pb[3]~input_o\,
	datac => \XComparator|AGTB~0_combout\,
	datad => \MooreState1|currentState.s0~q\,
	combout => \MealState|error~0_combout\);

-- Location: LCCOMB_X12_Y9_N4
\MealState|error~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MealState|error~1_combout\ = (\MealState|error~0_combout\) # ((!\pb[2]~input_o\ & ((\MooreState1|currentState.s0~q\) # (!\YComparator|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MealState|error~0_combout\,
	datab => \pb[2]~input_o\,
	datac => \MooreState1|currentState.s0~q\,
	datad => \YComparator|AEQB~combout\,
	combout => \MealState|error~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X11_Y9_N8
\MooreState2|nextState.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MooreState2|nextState.s2~0_combout\ = (\MooreState1|currentState.s2~q\ & (\pb[0]~input_o\ $ (!\MooreState2|currentState.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \MooreState1|currentState.s2~q\,
	datac => \MooreState2|currentState.s2~q\,
	combout => \MooreState2|nextState.s2~0_combout\);

-- Location: FF_X11_Y9_N9
\MooreState2|currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MooreState2|nextState.s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MooreState2|currentState.s2~q\);

-- Location: LCCOMB_X11_Y10_N10
\YSevenSeg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux6~0_combout\ = (\YMUX|output[2]~2_combout\ & (!\YMUX|output[1]~1_combout\ & ((\YMUX|output[3]~3_combout\) # (!\YMUX|output[0]~0_combout\)))) # (!\YMUX|output[2]~2_combout\ & (\YMUX|output[0]~0_combout\ & (\YMUX|output[3]~3_combout\ $ 
-- (!\YMUX|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y12_N16
\XSevenSeg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux6~0_combout\ = (\XMUX|output[1]~1_combout\ & (!\XMUX|output[2]~2_combout\ & (\XMUX|output[0]~0_combout\ & \XMUX|output[3]~3_combout\))) # (!\XMUX|output[1]~1_combout\ & (\XMUX|output[2]~2_combout\ $ (((\XMUX|output[0]~0_combout\ & 
-- !\XMUX|output[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\seg7mux|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[0]~0_combout\ = (bin_counter(10) & (\YSevenSeg|Mux6~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YSevenSeg|Mux6~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux6~0_combout\,
	combout => \seg7mux|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y10_N0
\YSevenSeg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux4~0_combout\ = (\YMUX|output[2]~2_combout\ & (\YMUX|output[3]~3_combout\ & ((\YMUX|output[1]~1_combout\) # (!\YMUX|output[0]~0_combout\)))) # (!\YMUX|output[2]~2_combout\ & (!\YMUX|output[3]~3_combout\ & (!\YMUX|output[0]~0_combout\ & 
-- \YMUX|output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
\XSevenSeg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux4~0_combout\ = (\XMUX|output[2]~2_combout\ & (\XMUX|output[3]~3_combout\ & ((\XMUX|output[1]~1_combout\) # (!\XMUX|output[0]~0_combout\)))) # (!\XMUX|output[2]~2_combout\ & (\XMUX|output[1]~1_combout\ & (!\XMUX|output[0]~0_combout\ & 
-- !\XMUX|output[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y12_N30
\seg7mux|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[2]~2_combout\ = (bin_counter(10) & (\YSevenSeg|Mux4~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YSevenSeg|Mux4~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux4~0_combout\,
	combout => \seg7mux|DOUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y10_N22
\YSevenSeg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux3~0_combout\ = (\YMUX|output[1]~1_combout\ & ((\YMUX|output[2]~2_combout\ & ((\YMUX|output[0]~0_combout\))) # (!\YMUX|output[2]~2_combout\ & (\YMUX|output[3]~3_combout\ & !\YMUX|output[0]~0_combout\)))) # (!\YMUX|output[1]~1_combout\ & 
-- (!\YMUX|output[3]~3_combout\ & (\YMUX|output[2]~2_combout\ $ (\YMUX|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N24
\XSevenSeg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux3~0_combout\ = (\XMUX|output[1]~1_combout\ & ((\XMUX|output[2]~2_combout\ & (\XMUX|output[0]~0_combout\)) # (!\XMUX|output[2]~2_combout\ & (!\XMUX|output[0]~0_combout\ & \XMUX|output[3]~3_combout\)))) # (!\XMUX|output[1]~1_combout\ & 
-- (!\XMUX|output[3]~3_combout\ & (\XMUX|output[2]~2_combout\ $ (\XMUX|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\seg7mux|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[3]~3_combout\ = (bin_counter(10) & (\YSevenSeg|Mux3~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \YSevenSeg|Mux3~0_combout\,
	datac => bin_counter(10),
	datad => \XSevenSeg|Mux3~0_combout\,
	combout => \seg7mux|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y10_N28
\YSevenSeg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YSevenSeg|Mux2~0_combout\ = (\YMUX|output[1]~1_combout\ & (((!\YMUX|output[3]~3_combout\ & \YMUX|output[0]~0_combout\)))) # (!\YMUX|output[1]~1_combout\ & ((\YMUX|output[2]~2_combout\ & (!\YMUX|output[3]~3_combout\)) # (!\YMUX|output[2]~2_combout\ & 
-- ((\YMUX|output[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YMUX|output[2]~2_combout\,
	datab => \YMUX|output[3]~3_combout\,
	datac => \YMUX|output[0]~0_combout\,
	datad => \YMUX|output[1]~1_combout\,
	combout => \YSevenSeg|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y12_N8
\XSevenSeg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XSevenSeg|Mux2~0_combout\ = (\XMUX|output[1]~1_combout\ & (((\XMUX|output[0]~0_combout\ & !\XMUX|output[3]~3_combout\)))) # (!\XMUX|output[1]~1_combout\ & ((\XMUX|output[2]~2_combout\ & ((!\XMUX|output[3]~3_combout\))) # (!\XMUX|output[2]~2_combout\ & 
-- (\XMUX|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XMUX|output[1]~1_combout\,
	datab => \XMUX|output[2]~2_combout\,
	datac => \XMUX|output[0]~0_combout\,
	datad => \XMUX|output[3]~3_combout\,
	combout => \XSevenSeg|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
\seg7mux|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg7mux|DOUT[4]~4_combout\ = (bin_counter(10) & (\YSevenSeg|Mux2~0_combout\)) # (!bin_counter(10) & ((\XSevenSeg|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(10),
	datab => \YSevenSeg|Mux2~0_combout\,
	datac => \XSevenSeg|Mux2~0_combout\,
	combout => \seg7mux|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


>>>>>>> cfef051bb3bf4a0568bc19b66a91f7a9f79c087f
