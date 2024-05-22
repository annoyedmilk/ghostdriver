-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/22/2024 23:54:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	racegame_top IS
    PORT (
	clk_50 : IN std_logic;
	reset : IN std_logic;
	btn_left : IN std_logic;
	btn_right : IN std_logic;
	hsync : BUFFER std_logic;
	vsync : BUFFER std_logic;
	rgb_r : BUFFER std_logic_vector(3 DOWNTO 0);
	rgb_g : BUFFER std_logic_vector(3 DOWNTO 0);
	rgb_b : BUFFER std_logic_vector(3 DOWNTO 0);
	led_left : BUFFER std_logic;
	led_right : BUFFER std_logic
	);
END racegame_top;

-- Design Ports Information
-- hsync	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_r[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_r[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_r[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_r[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_g[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_g[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_g[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_g[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_b[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_b[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_b[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_b[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_left	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_right	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_left	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_right	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF racegame_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_btn_left : std_logic;
SIGNAL ww_btn_right : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_rgb_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rgb_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rgb_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_left : std_logic;
SIGNAL ww_led_right : std_logic;
SIGNAL \PLL:pll1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \PLL:pll1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \hvsync_gen|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \hvsync_gen|Add0~1\ : std_logic;
SIGNAL \hvsync_gen|Add0~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~3\ : std_logic;
SIGNAL \hvsync_gen|Add0~4_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~5\ : std_logic;
SIGNAL \hvsync_gen|Add0~6_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~7\ : std_logic;
SIGNAL \hvsync_gen|Add0~8_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~9\ : std_logic;
SIGNAL \hvsync_gen|Add0~10_combout\ : std_logic;
SIGNAL \hvsync_gen|local_hpos~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~11\ : std_logic;
SIGNAL \hvsync_gen|Add0~12_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~13\ : std_logic;
SIGNAL \hvsync_gen|Add0~14_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~15\ : std_logic;
SIGNAL \hvsync_gen|Add0~17\ : std_logic;
SIGNAL \hvsync_gen|Add0~18_combout\ : std_logic;
SIGNAL \hvsync_gen|local_hpos~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal0~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal0~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal0~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~16_combout\ : std_logic;
SIGNAL \hvsync_gen|local_hpos~2_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~0_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~1_combout\ : std_logic;
SIGNAL \hvsync_gen|hsync~q\ : std_logic;
SIGNAL \hvsync_gen|Add1~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~11\ : std_logic;
SIGNAL \hvsync_gen|Add1~12_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~13\ : std_logic;
SIGNAL \hvsync_gen|Add1~14_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~15\ : std_logic;
SIGNAL \hvsync_gen|Add1~16_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal1~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~17\ : std_logic;
SIGNAL \hvsync_gen|Add1~18_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal1~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal1~2_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~3_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~1\ : std_logic;
SIGNAL \hvsync_gen|Add1~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~3\ : std_logic;
SIGNAL \hvsync_gen|Add1~4_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~5\ : std_logic;
SIGNAL \hvsync_gen|Add1~6_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~7\ : std_logic;
SIGNAL \hvsync_gen|Add1~8_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~9\ : std_logic;
SIGNAL \hvsync_gen|Add1~10_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~2_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~3_combout\ : std_logic;
SIGNAL \hvsync_gen|vsync~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \btn_right~input_o\ : std_logic;
SIGNAL \debouncer_right|counter[0]~32_combout\ : std_logic;
SIGNAL \debouncer_right|debouncing~0_combout\ : std_logic;
SIGNAL \debouncer_right|debouncing~q\ : std_logic;
SIGNAL \debouncer_right|counter[16]~96_combout\ : std_logic;
SIGNAL \debouncer_right|counter[16]~97_combout\ : std_logic;
SIGNAL \debouncer_right|counter[0]~33\ : std_logic;
SIGNAL \debouncer_right|counter[1]~34_combout\ : std_logic;
SIGNAL \debouncer_right|counter[1]~35\ : std_logic;
SIGNAL \debouncer_right|counter[2]~36_combout\ : std_logic;
SIGNAL \debouncer_right|counter[2]~37\ : std_logic;
SIGNAL \debouncer_right|counter[3]~38_combout\ : std_logic;
SIGNAL \debouncer_right|counter[3]~39\ : std_logic;
SIGNAL \debouncer_right|counter[4]~40_combout\ : std_logic;
SIGNAL \debouncer_right|counter[4]~41\ : std_logic;
SIGNAL \debouncer_right|counter[5]~42_combout\ : std_logic;
SIGNAL \debouncer_right|counter[5]~43\ : std_logic;
SIGNAL \debouncer_right|counter[6]~44_combout\ : std_logic;
SIGNAL \debouncer_right|counter[6]~45\ : std_logic;
SIGNAL \debouncer_right|counter[7]~46_combout\ : std_logic;
SIGNAL \debouncer_right|counter[7]~47\ : std_logic;
SIGNAL \debouncer_right|counter[8]~48_combout\ : std_logic;
SIGNAL \debouncer_right|counter[8]~49\ : std_logic;
SIGNAL \debouncer_right|counter[9]~50_combout\ : std_logic;
SIGNAL \debouncer_right|counter[9]~51\ : std_logic;
SIGNAL \debouncer_right|counter[10]~52_combout\ : std_logic;
SIGNAL \debouncer_right|counter[10]~53\ : std_logic;
SIGNAL \debouncer_right|counter[11]~54_combout\ : std_logic;
SIGNAL \debouncer_right|counter[11]~55\ : std_logic;
SIGNAL \debouncer_right|counter[12]~56_combout\ : std_logic;
SIGNAL \debouncer_right|counter[12]~57\ : std_logic;
SIGNAL \debouncer_right|counter[13]~58_combout\ : std_logic;
SIGNAL \debouncer_right|counter[13]~59\ : std_logic;
SIGNAL \debouncer_right|counter[14]~60_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer_right|counter[14]~61\ : std_logic;
SIGNAL \debouncer_right|counter[15]~62_combout\ : std_logic;
SIGNAL \debouncer_right|counter[15]~63\ : std_logic;
SIGNAL \debouncer_right|counter[16]~64_combout\ : std_logic;
SIGNAL \debouncer_right|counter[16]~65\ : std_logic;
SIGNAL \debouncer_right|counter[17]~66_combout\ : std_logic;
SIGNAL \debouncer_right|counter[17]~67\ : std_logic;
SIGNAL \debouncer_right|counter[18]~68_combout\ : std_logic;
SIGNAL \debouncer_right|counter[18]~69\ : std_logic;
SIGNAL \debouncer_right|counter[19]~70_combout\ : std_logic;
SIGNAL \debouncer_right|counter[19]~71\ : std_logic;
SIGNAL \debouncer_right|counter[20]~72_combout\ : std_logic;
SIGNAL \debouncer_right|counter[20]~73\ : std_logic;
SIGNAL \debouncer_right|counter[21]~74_combout\ : std_logic;
SIGNAL \debouncer_right|counter[21]~75\ : std_logic;
SIGNAL \debouncer_right|counter[22]~76_combout\ : std_logic;
SIGNAL \debouncer_right|counter[22]~77\ : std_logic;
SIGNAL \debouncer_right|counter[23]~78_combout\ : std_logic;
SIGNAL \debouncer_right|counter[23]~79\ : std_logic;
SIGNAL \debouncer_right|counter[24]~80_combout\ : std_logic;
SIGNAL \debouncer_right|counter[24]~81\ : std_logic;
SIGNAL \debouncer_right|counter[25]~82_combout\ : std_logic;
SIGNAL \debouncer_right|counter[25]~83\ : std_logic;
SIGNAL \debouncer_right|counter[26]~84_combout\ : std_logic;
SIGNAL \debouncer_right|counter[26]~85\ : std_logic;
SIGNAL \debouncer_right|counter[27]~86_combout\ : std_logic;
SIGNAL \debouncer_right|counter[27]~87\ : std_logic;
SIGNAL \debouncer_right|counter[28]~88_combout\ : std_logic;
SIGNAL \debouncer_right|counter[28]~89\ : std_logic;
SIGNAL \debouncer_right|counter[29]~90_combout\ : std_logic;
SIGNAL \debouncer_right|counter[29]~91\ : std_logic;
SIGNAL \debouncer_right|counter[30]~92_combout\ : std_logic;
SIGNAL \debouncer_right|counter[30]~93\ : std_logic;
SIGNAL \debouncer_right|counter[31]~94_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~8_combout\ : std_logic;
SIGNAL \debouncer_right|debounced_signal~0_combout\ : std_logic;
SIGNAL \debouncer_right|debounced_signal~q\ : std_logic;
SIGNAL \car_control_inst|x_pos[1]~9_combout\ : std_logic;
SIGNAL \debouncer_left|counter[0]~32_combout\ : std_logic;
SIGNAL \btn_left~input_o\ : std_logic;
SIGNAL \debouncer_left|debouncing~0_combout\ : std_logic;
SIGNAL \debouncer_left|debouncing~q\ : std_logic;
SIGNAL \debouncer_left|counter[17]~96_combout\ : std_logic;
SIGNAL \debouncer_left|counter[17]~97_combout\ : std_logic;
SIGNAL \debouncer_left|counter[0]~33\ : std_logic;
SIGNAL \debouncer_left|counter[1]~34_combout\ : std_logic;
SIGNAL \debouncer_left|counter[1]~35\ : std_logic;
SIGNAL \debouncer_left|counter[2]~36_combout\ : std_logic;
SIGNAL \debouncer_left|counter[2]~37\ : std_logic;
SIGNAL \debouncer_left|counter[3]~38_combout\ : std_logic;
SIGNAL \debouncer_left|counter[3]~39\ : std_logic;
SIGNAL \debouncer_left|counter[4]~40_combout\ : std_logic;
SIGNAL \debouncer_left|counter[4]~41\ : std_logic;
SIGNAL \debouncer_left|counter[5]~42_combout\ : std_logic;
SIGNAL \debouncer_left|counter[5]~43\ : std_logic;
SIGNAL \debouncer_left|counter[6]~44_combout\ : std_logic;
SIGNAL \debouncer_left|counter[6]~45\ : std_logic;
SIGNAL \debouncer_left|counter[7]~46_combout\ : std_logic;
SIGNAL \debouncer_left|counter[7]~47\ : std_logic;
SIGNAL \debouncer_left|counter[8]~48_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer_left|counter[8]~49\ : std_logic;
SIGNAL \debouncer_left|counter[9]~50_combout\ : std_logic;
SIGNAL \debouncer_left|counter[9]~51\ : std_logic;
SIGNAL \debouncer_left|counter[10]~52_combout\ : std_logic;
SIGNAL \debouncer_left|counter[10]~53\ : std_logic;
SIGNAL \debouncer_left|counter[11]~54_combout\ : std_logic;
SIGNAL \debouncer_left|counter[11]~55\ : std_logic;
SIGNAL \debouncer_left|counter[12]~56_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer_left|counter[12]~57\ : std_logic;
SIGNAL \debouncer_left|counter[13]~58_combout\ : std_logic;
SIGNAL \debouncer_left|counter[13]~59\ : std_logic;
SIGNAL \debouncer_left|counter[14]~60_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer_left|counter[14]~61\ : std_logic;
SIGNAL \debouncer_left|counter[15]~62_combout\ : std_logic;
SIGNAL \debouncer_left|counter[15]~63\ : std_logic;
SIGNAL \debouncer_left|counter[16]~64_combout\ : std_logic;
SIGNAL \debouncer_left|counter[16]~65\ : std_logic;
SIGNAL \debouncer_left|counter[17]~66_combout\ : std_logic;
SIGNAL \debouncer_left|counter[17]~67\ : std_logic;
SIGNAL \debouncer_left|counter[18]~68_combout\ : std_logic;
SIGNAL \debouncer_left|counter[18]~69\ : std_logic;
SIGNAL \debouncer_left|counter[19]~70_combout\ : std_logic;
SIGNAL \debouncer_left|counter[19]~71\ : std_logic;
SIGNAL \debouncer_left|counter[20]~72_combout\ : std_logic;
SIGNAL \debouncer_left|counter[20]~73\ : std_logic;
SIGNAL \debouncer_left|counter[21]~74_combout\ : std_logic;
SIGNAL \debouncer_left|counter[21]~75\ : std_logic;
SIGNAL \debouncer_left|counter[22]~76_combout\ : std_logic;
SIGNAL \debouncer_left|counter[22]~77\ : std_logic;
SIGNAL \debouncer_left|counter[23]~78_combout\ : std_logic;
SIGNAL \debouncer_left|counter[23]~79\ : std_logic;
SIGNAL \debouncer_left|counter[24]~80_combout\ : std_logic;
SIGNAL \debouncer_left|counter[24]~81\ : std_logic;
SIGNAL \debouncer_left|counter[25]~82_combout\ : std_logic;
SIGNAL \debouncer_left|counter[25]~83\ : std_logic;
SIGNAL \debouncer_left|counter[26]~84_combout\ : std_logic;
SIGNAL \debouncer_left|counter[26]~85\ : std_logic;
SIGNAL \debouncer_left|counter[27]~86_combout\ : std_logic;
SIGNAL \debouncer_left|counter[27]~87\ : std_logic;
SIGNAL \debouncer_left|counter[28]~88_combout\ : std_logic;
SIGNAL \debouncer_left|counter[28]~89\ : std_logic;
SIGNAL \debouncer_left|counter[29]~90_combout\ : std_logic;
SIGNAL \debouncer_left|counter[29]~91\ : std_logic;
SIGNAL \debouncer_left|counter[30]~92_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer_left|counter[30]~93\ : std_logic;
SIGNAL \debouncer_left|counter[31]~94_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~8_combout\ : std_logic;
SIGNAL \debouncer_left|debounced_signal~0_combout\ : std_logic;
SIGNAL \debouncer_left|debounced_signal~q\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~15\ : std_logic;
SIGNAL \car_control_inst|x_pos[3]~16_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[3]~17\ : std_logic;
SIGNAL \car_control_inst|x_pos[4]~18_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[4]~19\ : std_logic;
SIGNAL \car_control_inst|x_pos[5]~20_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[5]~21\ : std_logic;
SIGNAL \car_control_inst|x_pos[6]~22_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~11_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[6]~23\ : std_logic;
SIGNAL \car_control_inst|x_pos[7]~24_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[7]~25\ : std_logic;
SIGNAL \car_control_inst|x_pos[8]~26_combout\ : std_logic;
SIGNAL \car_control_inst|process_0~0_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~12_combout\ : std_logic;
SIGNAL \car_control_inst|left_prev~q\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~13_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[1]~10\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~14_combout\ : std_logic;
SIGNAL \car_control_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \car_control_inst|process_0~1_combout\ : std_logic;
SIGNAL \car_control_inst|right_prev~q\ : std_logic;
SIGNAL \car_control_inst|process_0~2_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[8]~27\ : std_logic;
SIGNAL \car_control_inst|x_pos[9]~28_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux46~30_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux46~27_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux46~28_combout\ : std_logic;
SIGNAL \Mux46~29_combout\ : std_logic;
SIGNAL \Mux46~25_combout\ : std_logic;
SIGNAL \Mux46~26_combout\ : std_logic;
SIGNAL \Mux46~31_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux46~18_combout\ : std_logic;
SIGNAL \Mux46~19_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~11_combout\ : std_logic;
SIGNAL \Mux46~20_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux46~21_combout\ : std_logic;
SIGNAL \Mux46~22_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux46~7_combout\ : std_logic;
SIGNAL \Mux46~17_combout\ : std_logic;
SIGNAL \Mux46~23_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux46~13_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux46~14_combout\ : std_logic;
SIGNAL \Mux46~15_combout\ : std_logic;
SIGNAL \Mux46~10_combout\ : std_logic;
SIGNAL \Mux46~8_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux46~9_combout\ : std_logic;
SIGNAL \Mux46~12_combout\ : std_logic;
SIGNAL \Mux46~16_combout\ : std_logic;
SIGNAL \Mux46~24_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux46~6_combout\ : std_logic;
SIGNAL \Mux46~32_combout\ : std_logic;
SIGNAL \hvsync_gen|display_on~0_combout\ : std_logic;
SIGNAL \hvsync_gen|LessThan5~0_combout\ : std_logic;
SIGNAL \hvsync_gen|display_on~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~13_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~15_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][0]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~1\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~3\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~5\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~7\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~9\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~11\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~13\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~15\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~16_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~17\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~19\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~20_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~21\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~22_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~23\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~24_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~25\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~26_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~27\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~28_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~29\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~30_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~31\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~32_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~33\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~34_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~35\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~36_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~37\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~38_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~39\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~40_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~41\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~42_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~43\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~44_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~45\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~46_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~47\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~48_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~49\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~50_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~51\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~52_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~53\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~54_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~55\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~56_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~57\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~58_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~59\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~60_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~61\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~62_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~9_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][0]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][0]~11\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][1]~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][1]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][1]~13\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][2]~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][2]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][2]~15\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][3]~16_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][3]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][3]~17\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][4]~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][4]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][4]~19\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][5]~20_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][5]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][5]~21\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][6]~22_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][6]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][6]~23\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][7]~24_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][7]~q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][7]~25\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][8]~26_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][8]~q\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][8]~27\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][9]~28_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][9]~q\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~56_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~17_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~19_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|lfsr_reg~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[0]~25_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[0]~27_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[0]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[0]~26_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][0]~37_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][0]~39_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][0]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][0]~38_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][1]~33_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][1]~35_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][1]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][1]~34_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][2]~29_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][2]~31_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][2]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][2]~30_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][3]~25_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][3]~27_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][3]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][3]~26_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[5]~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[5]~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[5]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[5]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[6]~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[6]~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[6]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[6]~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[7]~9_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[7]~11_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[7]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[7]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~13_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~15_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~9_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~11_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~21_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~23_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~22_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~17_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~19_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~1\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~3\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~5\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~7\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~9\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~11\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan7~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|collision_detected~q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~10_combout\ : std_logic;
SIGNAL \rgb_r~0_combout\ : std_logic;
SIGNAL \rgb_r~1_combout\ : std_logic;
SIGNAL \rgb_r[0]~reg0_q\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux45~14_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux45~15_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux45~16_combout\ : std_logic;
SIGNAL \Mux45~17_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux45~18_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux45~19_combout\ : std_logic;
SIGNAL \Mux45~12_combout\ : std_logic;
SIGNAL \Mux45~13_combout\ : std_logic;
SIGNAL \Mux45~20_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux100~14_combout\ : std_logic;
SIGNAL \Mux45~44_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux45~21_combout\ : std_logic;
SIGNAL \Mux45~22_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux45~49_combout\ : std_logic;
SIGNAL \Mux45~50_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux45~46_combout\ : std_logic;
SIGNAL \Mux45~31_combout\ : std_logic;
SIGNAL \Mux45~47_combout\ : std_logic;
SIGNAL \Mux45~32_combout\ : std_logic;
SIGNAL \Mux45~33_combout\ : std_logic;
SIGNAL \Mux45~34_combout\ : std_logic;
SIGNAL \Mux45~35_combout\ : std_logic;
SIGNAL \Mux45~29_combout\ : std_logic;
SIGNAL \Mux45~23_combout\ : std_logic;
SIGNAL \Mux45~24_combout\ : std_logic;
SIGNAL \Mux45~25_combout\ : std_logic;
SIGNAL \Mux45~26_combout\ : std_logic;
SIGNAL \Mux45~27_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux45~45_combout\ : std_logic;
SIGNAL \Mux45~28_combout\ : std_logic;
SIGNAL \Mux45~30_combout\ : std_logic;
SIGNAL \Mux45~36_combout\ : std_logic;
SIGNAL \Mux45~37_combout\ : std_logic;
SIGNAL \Mux45~39_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Mux45~38_combout\ : std_logic;
SIGNAL \Mux45~40_combout\ : std_logic;
SIGNAL \Mux45~48_combout\ : std_logic;
SIGNAL \Mux45~41_combout\ : std_logic;
SIGNAL \Mux45~42_combout\ : std_logic;
SIGNAL \rgb_r~2_combout\ : std_logic;
SIGNAL \rgb_r[1]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~1\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~3\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~5\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~7\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~9\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~11\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add7~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~1_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~3_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~5_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~7_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~9_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~11_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~13_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~15_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~17_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan25~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~1_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~3_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~5_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~7_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~9_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~11_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~13_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~15_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~17_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan26~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~1_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~3_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~5_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~7_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~9_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~11_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~13_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~15_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~17_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan27~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~1_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~3_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~5_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~7_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~9_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~11_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~13_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~15_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~17_cout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan24~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~21_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux44~49_combout\ : std_logic;
SIGNAL \Mux44~47_combout\ : std_logic;
SIGNAL \Mux44~46_combout\ : std_logic;
SIGNAL \Mux44~48_combout\ : std_logic;
SIGNAL \Mux46~33_combout\ : std_logic;
SIGNAL \Mux44~45_combout\ : std_logic;
SIGNAL \Mux44~50_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux44~18_combout\ : std_logic;
SIGNAL \Mux44~19_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux44~21_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux44~20_combout\ : std_logic;
SIGNAL \Mux44~22_combout\ : std_logic;
SIGNAL \Mux44~23_combout\ : std_logic;
SIGNAL \Mux44~24_combout\ : std_logic;
SIGNAL \Mux44~25_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux44~33_combout\ : std_logic;
SIGNAL \Mux44~36_combout\ : std_logic;
SIGNAL \Mux44~71_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux44~30_combout\ : std_logic;
SIGNAL \Mux44~31_combout\ : std_logic;
SIGNAL \Mux44~32_combout\ : std_logic;
SIGNAL \Mux44~34_combout\ : std_logic;
SIGNAL \Mux44~35_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux44~76_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \Mux44~27_combout\ : std_logic;
SIGNAL \Mux44~28_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux44~26_combout\ : std_logic;
SIGNAL \Mux44~29_combout\ : std_logic;
SIGNAL \Mux44~37_combout\ : std_logic;
SIGNAL \Mux44~39_combout\ : std_logic;
SIGNAL \Mux44~40_combout\ : std_logic;
SIGNAL \Mux44~73_combout\ : std_logic;
SIGNAL \Mux44~41_combout\ : std_logic;
SIGNAL \Mux44~42_combout\ : std_logic;
SIGNAL \Mux44~72_combout\ : std_logic;
SIGNAL \Mux44~38_combout\ : std_logic;
SIGNAL \Mux44~43_combout\ : std_logic;
SIGNAL \Mux44~44_combout\ : std_logic;
SIGNAL \Mux44~51_combout\ : std_logic;
SIGNAL \rgb_r~3_combout\ : std_logic;
SIGNAL \rgb_r~4_combout\ : std_logic;
SIGNAL \rgb_r[2]~reg0_q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux43~13_combout\ : std_logic;
SIGNAL \Mux43~14_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux43~18_combout\ : std_logic;
SIGNAL \Mux43~19_combout\ : std_logic;
SIGNAL \Mux43~15_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux45~43_combout\ : std_logic;
SIGNAL \Mux43~16_combout\ : std_logic;
SIGNAL \Mux43~17_combout\ : std_logic;
SIGNAL \Mux43~20_combout\ : std_logic;
SIGNAL \Mux43~21_combout\ : std_logic;
SIGNAL \Mux43~22_combout\ : std_logic;
SIGNAL \Mux43~23_combout\ : std_logic;
SIGNAL \rgb_r~6_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux43~7_combout\ : std_logic;
SIGNAL \Mux43~8_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux43~6_combout\ : std_logic;
SIGNAL \Mux43~9_combout\ : std_logic;
SIGNAL \Mux43~10_combout\ : std_logic;
SIGNAL \Mux43~11_combout\ : std_logic;
SIGNAL \Mux43~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~11_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~13_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~14_combout\ : std_logic;
SIGNAL \rgb_r~5_combout\ : std_logic;
SIGNAL \rgb_r~7_combout\ : std_logic;
SIGNAL \rgb_r[3]~reg0_q\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux43~27_combout\ : std_logic;
SIGNAL \Mux43~25_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux68~2_combout\ : std_logic;
SIGNAL \Mux43~26_combout\ : std_logic;
SIGNAL \Mux43~28_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux46~34_combout\ : std_logic;
SIGNAL \Mux43~38_combout\ : std_logic;
SIGNAL \Mux43~39_combout\ : std_logic;
SIGNAL \Mux43~24_combout\ : std_logic;
SIGNAL \Mux43~36_combout\ : std_logic;
SIGNAL \Mux43~37_combout\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \Mux86~1_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux81~1_combout\ : std_logic;
SIGNAL \Mux43~34_combout\ : std_logic;
SIGNAL \Mux46~37_combout\ : std_logic;
SIGNAL \Mux43~35_combout\ : std_logic;
SIGNAL \Mux43~32_combout\ : std_logic;
SIGNAL \Mux46~35_combout\ : std_logic;
SIGNAL \Mux46~36_combout\ : std_logic;
SIGNAL \Mux43~33_combout\ : std_logic;
SIGNAL \Mux86~3_combout\ : std_logic;
SIGNAL \Mux43~30_combout\ : std_logic;
SIGNAL \Mux43~29_combout\ : std_logic;
SIGNAL \Mux43~31_combout\ : std_logic;
SIGNAL \Mux86~2_combout\ : std_logic;
SIGNAL \Mux86~4_combout\ : std_logic;
SIGNAL \rgb_g[0]~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~15_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~16_combout\ : std_logic;
SIGNAL \rgb_g~3_combout\ : std_logic;
SIGNAL \rgb_g[0]~reg0_q\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \Mux75~1_combout\ : std_logic;
SIGNAL \Mux46~44_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \Mux46~41_combout\ : std_logic;
SIGNAL \Mux46~43_combout\ : std_logic;
SIGNAL \Mux46~39_combout\ : std_logic;
SIGNAL \Mux46~40_combout\ : std_logic;
SIGNAL \Mux85~23_combout\ : std_logic;
SIGNAL \Mux46~38_combout\ : std_logic;
SIGNAL \Mux46~42_combout\ : std_logic;
SIGNAL \Mux85~24_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \Mux80~1_combout\ : std_logic;
SIGNAL \Mux46~49_combout\ : std_logic;
SIGNAL \Mux46~50_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Mux46~48_combout\ : std_logic;
SIGNAL \Mux70~2_combout\ : std_logic;
SIGNAL \Mux70~3_combout\ : std_logic;
SIGNAL \Mux46~47_combout\ : std_logic;
SIGNAL \Mux85~25_combout\ : std_logic;
SIGNAL \Mux46~45_combout\ : std_logic;
SIGNAL \Mux46~46_combout\ : std_logic;
SIGNAL \Mux85~26_combout\ : std_logic;
SIGNAL \Mux85~27_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux85~20_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux85~13_combout\ : std_logic;
SIGNAL \Mux85~29_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux85~30_combout\ : std_logic;
SIGNAL \Mux85~21_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux85~28_combout\ : std_logic;
SIGNAL \Mux85~16_combout\ : std_logic;
SIGNAL \Mux85~17_combout\ : std_logic;
SIGNAL \Mux85~18_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux85~12_combout\ : std_logic;
SIGNAL \Mux85~14_combout\ : std_logic;
SIGNAL \Mux85~15_combout\ : std_logic;
SIGNAL \Mux85~19_combout\ : std_logic;
SIGNAL \Mux85~7_combout\ : std_logic;
SIGNAL \Mux85~6_combout\ : std_logic;
SIGNAL \Mux85~8_combout\ : std_logic;
SIGNAL \Mux85~9_combout\ : std_logic;
SIGNAL \Mux85~10_combout\ : std_logic;
SIGNAL \Mux85~11_combout\ : std_logic;
SIGNAL \Mux85~22_combout\ : std_logic;
SIGNAL \rgb_g[1]~1_combout\ : std_logic;
SIGNAL \rgb_g[1]~reg0_q\ : std_logic;
SIGNAL \Mux84~27_combout\ : std_logic;
SIGNAL \Mux84~35_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux66~2_combout\ : std_logic;
SIGNAL \Mux84~28_combout\ : std_logic;
SIGNAL \Mux44~52_combout\ : std_logic;
SIGNAL \Mux44~59_combout\ : std_logic;
SIGNAL \Mux84~25_combout\ : std_logic;
SIGNAL \Mux44~60_combout\ : std_logic;
SIGNAL \Mux44~58_combout\ : std_logic;
SIGNAL \Mux84~26_combout\ : std_logic;
SIGNAL \Mux84~29_combout\ : std_logic;
SIGNAL \Mux84~30_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \Mux44~57_combout\ : std_logic;
SIGNAL \Mux44~55_combout\ : std_logic;
SIGNAL \Mux44~56_combout\ : std_logic;
SIGNAL \Mux84~23_combout\ : std_logic;
SIGNAL \Mux44~53_combout\ : std_logic;
SIGNAL \Mux44~54_combout\ : std_logic;
SIGNAL \Mux84~24_combout\ : std_logic;
SIGNAL \Mux84~31_combout\ : std_logic;
SIGNAL \Mux90~2_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux84~33_combout\ : std_logic;
SIGNAL \Mux84~14_combout\ : std_logic;
SIGNAL \Mux84~34_combout\ : std_logic;
SIGNAL \Mux84~15_combout\ : std_logic;
SIGNAL \Mux84~32_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux63~2_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~3_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux84~12_combout\ : std_logic;
SIGNAL \Mux84~13_combout\ : std_logic;
SIGNAL \Mux84~16_combout\ : std_logic;
SIGNAL \Mux84~10_combout\ : std_logic;
SIGNAL \Mux84~11_combout\ : std_logic;
SIGNAL \Mux84~18_combout\ : std_logic;
SIGNAL \Mux84~19_combout\ : std_logic;
SIGNAL \Mux84~20_combout\ : std_logic;
SIGNAL \Mux84~17_combout\ : std_logic;
SIGNAL \Mux84~21_combout\ : std_logic;
SIGNAL \Mux84~22_combout\ : std_logic;
SIGNAL \rgb_g[2]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~22_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~17_combout\ : std_logic;
SIGNAL \rgb_g[2]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~23_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~18_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \Mux77~1_combout\ : std_logic;
SIGNAL \Mux46~63_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Mux46~59_combout\ : std_logic;
SIGNAL \Mux46~60_combout\ : std_logic;
SIGNAL \Mux46~62_combout\ : std_logic;
SIGNAL \Mux46~61_combout\ : std_logic;
SIGNAL \Mux83~11_combout\ : std_logic;
SIGNAL \Mux83~12_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Mux65~2_combout\ : std_logic;
SIGNAL \Mux46~57_combout\ : std_logic;
SIGNAL \Mux83~8_combout\ : std_logic;
SIGNAL \Mux83~6_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux83~7_combout\ : std_logic;
SIGNAL \Mux83~9_combout\ : std_logic;
SIGNAL \Mux46~55_combout\ : std_logic;
SIGNAL \Mux46~56_combout\ : std_logic;
SIGNAL \Mux83~4_combout\ : std_logic;
SIGNAL \Mux46~58_combout\ : std_logic;
SIGNAL \Mux83~5_combout\ : std_logic;
SIGNAL \Mux83~10_combout\ : std_logic;
SIGNAL \Mux46~53_combout\ : std_logic;
SIGNAL \Mux46~51_combout\ : std_logic;
SIGNAL \Mux46~52_combout\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \Mux46~54_combout\ : std_logic;
SIGNAL \Mux83~1_combout\ : std_logic;
SIGNAL \Mux83~2_combout\ : std_logic;
SIGNAL \Mux83~3_combout\ : std_logic;
SIGNAL \Mux83~13_combout\ : std_logic;
SIGNAL \rgb_g~4_combout\ : std_logic;
SIGNAL \rgb_g[3]~reg0_q\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Mux93~1_combout\ : std_logic;
SIGNAL \Mux93~2_combout\ : std_logic;
SIGNAL \Mux46~66_combout\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \Mux98~1_combout\ : std_logic;
SIGNAL \Mux46~67_combout\ : std_logic;
SIGNAL \Mux90~3_combout\ : std_logic;
SIGNAL \Mux103~6_combout\ : std_logic;
SIGNAL \Mux103~7_combout\ : std_logic;
SIGNAL \Mux103~8_combout\ : std_logic;
SIGNAL \Mux103~9_combout\ : std_logic;
SIGNAL \Mux103~10_combout\ : std_logic;
SIGNAL \Mux46~68_combout\ : std_logic;
SIGNAL \Mux46~69_combout\ : std_logic;
SIGNAL \Mux46~70_combout\ : std_logic;
SIGNAL \Mux46~73_combout\ : std_logic;
SIGNAL \Mux46~74_combout\ : std_logic;
SIGNAL \Mux46~71_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux95~1_combout\ : std_logic;
SIGNAL \Mux46~72_combout\ : std_logic;
SIGNAL \Mux103~4_combout\ : std_logic;
SIGNAL \Mux103~5_combout\ : std_logic;
SIGNAL \Mux103~11_combout\ : std_logic;
SIGNAL \Mux46~79_combout\ : std_logic;
SIGNAL \Mux46~75_combout\ : std_logic;
SIGNAL \Mux46~76_combout\ : std_logic;
SIGNAL \Mux46~78_combout\ : std_logic;
SIGNAL \Mux46~77_combout\ : std_logic;
SIGNAL \Mux103~12_combout\ : std_logic;
SIGNAL \Mux103~13_combout\ : std_logic;
SIGNAL \Mux46~64_combout\ : std_logic;
SIGNAL \Mux46~65_combout\ : std_logic;
SIGNAL \Mux103~15_combout\ : std_logic;
SIGNAL \Mux103~2_combout\ : std_logic;
SIGNAL \Mux103~3_combout\ : std_logic;
SIGNAL \Mux103~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~24_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~19_combout\ : std_logic;
SIGNAL \rgb_b~0_combout\ : std_logic;
SIGNAL \rgb_b[0]~reg0_q\ : std_logic;
SIGNAL \Mux102~3_combout\ : std_logic;
SIGNAL \Mux102~4_combout\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \Mux102~5_combout\ : std_logic;
SIGNAL \Mux102~7_combout\ : std_logic;
SIGNAL \Mux102~6_combout\ : std_logic;
SIGNAL \Mux102~8_combout\ : std_logic;
SIGNAL \Mux102~9_combout\ : std_logic;
SIGNAL \Mux102~13_combout\ : std_logic;
SIGNAL \Mux102~2_combout\ : std_logic;
SIGNAL \Mux102~10_combout\ : std_logic;
SIGNAL \Mux102~11_combout\ : std_logic;
SIGNAL \Mux102~12_combout\ : std_logic;
SIGNAL \rgb_b~1_combout\ : std_logic;
SIGNAL \rgb_b[1]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~25_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~20_combout\ : std_logic;
SIGNAL \Mux44~70_combout\ : std_logic;
SIGNAL \Mux101~16_combout\ : std_logic;
SIGNAL \Mux44~62_combout\ : std_logic;
SIGNAL \Mux44~61_combout\ : std_logic;
SIGNAL \Mux44~63_combout\ : std_logic;
SIGNAL \Mux101~9_combout\ : std_logic;
SIGNAL \Mux101~10_combout\ : std_logic;
SIGNAL \Mux44~64_combout\ : std_logic;
SIGNAL \Mux44~74_combout\ : std_logic;
SIGNAL \Mux91~2_combout\ : std_logic;
SIGNAL \Mux91~3_combout\ : std_logic;
SIGNAL \Mux101~12_combout\ : std_logic;
SIGNAL \Mux101~11_combout\ : std_logic;
SIGNAL \Mux101~13_combout\ : std_logic;
SIGNAL \Mux101~14_combout\ : std_logic;
SIGNAL \Mux44~68_combout\ : std_logic;
SIGNAL \Mux44~69_combout\ : std_logic;
SIGNAL \Mux95~2_combout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Mux94~1_combout\ : std_logic;
SIGNAL \Mux94~2_combout\ : std_logic;
SIGNAL \Mux44~67_combout\ : std_logic;
SIGNAL \Mux44~66_combout\ : std_logic;
SIGNAL \Mux101~7_combout\ : std_logic;
SIGNAL \Mux44~65_combout\ : std_logic;
SIGNAL \Mux44~75_combout\ : std_logic;
SIGNAL \Mux101~8_combout\ : std_logic;
SIGNAL \Mux101~15_combout\ : std_logic;
SIGNAL \Mux101~3_combout\ : std_logic;
SIGNAL \Mux101~1_combout\ : std_logic;
SIGNAL \Mux101~2_combout\ : std_logic;
SIGNAL \Mux101~4_combout\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \Mux89~1_combout\ : std_logic;
SIGNAL \Mux89~2_combout\ : std_logic;
SIGNAL \Mux101~5_combout\ : std_logic;
SIGNAL \Mux101~6_combout\ : std_logic;
SIGNAL \Mux101~17_combout\ : std_logic;
SIGNAL \rgb_b~2_combout\ : std_logic;
SIGNAL \rgb_b[2]~reg0_q\ : std_logic;
SIGNAL \Mux100~17_combout\ : std_logic;
SIGNAL \Mux100~27_combout\ : std_logic;
SIGNAL \Mux100~18_combout\ : std_logic;
SIGNAL \Mux100~28_combout\ : std_logic;
SIGNAL \Mux100~19_combout\ : std_logic;
SIGNAL \Mux46~80_combout\ : std_logic;
SIGNAL \Mux100~20_combout\ : std_logic;
SIGNAL \Mux100~21_combout\ : std_logic;
SIGNAL \Mux100~29_combout\ : std_logic;
SIGNAL \Mux100~22_combout\ : std_logic;
SIGNAL \Mux100~23_combout\ : std_logic;
SIGNAL \Mux46~82_combout\ : std_logic;
SIGNAL \Mux46~81_combout\ : std_logic;
SIGNAL \Mux100~24_combout\ : std_logic;
SIGNAL \Mux100~25_combout\ : std_logic;
SIGNAL \Mux100~15_combout\ : std_logic;
SIGNAL \Mux100~16_combout\ : std_logic;
SIGNAL \Mux100~26_combout\ : std_logic;
SIGNAL \rgb_b~3_combout\ : std_logic;
SIGNAL \rgb_b[3]~reg0_q\ : std_logic;
SIGNAL \led_left~reg0_q\ : std_logic;
SIGNAL \led_right~reg0feeder_combout\ : std_logic;
SIGNAL \led_right~reg0_q\ : std_logic;
SIGNAL \debouncer_right|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hvsync_gen|local_hpos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \debouncer_left|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \track_obstacle_inst|slow_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \track_obstacle_inst|track_color\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \car_control_inst|x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \hvsync_gen|local_vpos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_rgb_g~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~3_combout\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
ww_reset <= reset;
ww_btn_left <= btn_left;
ww_btn_right <= btn_right;
hsync <= ww_hsync;
vsync <= ww_vsync;
rgb_r <= ww_rgb_r;
rgb_g <= ww_rgb_g;
rgb_b <= ww_rgb_b;
led_left <= ww_led_left;
led_right <= ww_led_right;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL:pll1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_50~input_o\);

\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_rgb_g~3_combout\ <= NOT \rgb_g~3_combout\;
\ALT_INV_process_1~3_combout\ <= NOT \process_1~3_combout\;

-- Location: IOOBUF_X41_Y18_N16
\hsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvsync_gen|hsync~q\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X41_Y18_N23
\vsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvsync_gen|vsync~q\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOOBUF_X41_Y23_N23
\rgb_r[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_r[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_r(0));

-- Location: IOOBUF_X41_Y25_N2
\rgb_r[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_r[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_r(1));

-- Location: IOOBUF_X41_Y22_N2
\rgb_r[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_r[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_r(2));

-- Location: IOOBUF_X41_Y21_N23
\rgb_r[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_r[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_r(3));

-- Location: IOOBUF_X41_Y20_N2
\rgb_g[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_g[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_g(0));

-- Location: IOOBUF_X41_Y24_N23
\rgb_g[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_g[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_g(1));

-- Location: IOOBUF_X41_Y21_N16
\rgb_g[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_g[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_g(2));

-- Location: IOOBUF_X41_Y20_N23
\rgb_g[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_g[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_g(3));

-- Location: IOOBUF_X41_Y19_N16
\rgb_b[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_b[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_b(0));

-- Location: IOOBUF_X41_Y19_N9
\rgb_b[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_b[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_b(1));

-- Location: IOOBUF_X41_Y19_N2
\rgb_b[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_b[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_b(2));

-- Location: IOOBUF_X41_Y21_N9
\rgb_b[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_b[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rgb_b(3));

-- Location: IOOBUF_X0_Y27_N16
\led_left~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_left~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_left);

-- Location: IOOBUF_X0_Y27_N9
\led_right~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_right~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_right);

-- Location: IOIBUF_X41_Y15_N1
\clk_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: PLL_2
\PLL:pll1|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL:pll1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL:pll1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL:pll1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL:pll1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y18_N4
\hvsync_gen|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~0_combout\ = \hvsync_gen|local_hpos\(0) $ (VCC)
-- \hvsync_gen|Add0~1\ = CARRY(\hvsync_gen|local_hpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(0),
	datad => VCC,
	combout => \hvsync_gen|Add0~0_combout\,
	cout => \hvsync_gen|Add0~1\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X23_Y18_N5
\hvsync_gen|local_hpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(0));

-- Location: LCCOMB_X23_Y18_N6
\hvsync_gen|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~2_combout\ = (\hvsync_gen|local_hpos\(1) & (!\hvsync_gen|Add0~1\)) # (!\hvsync_gen|local_hpos\(1) & ((\hvsync_gen|Add0~1\) # (GND)))
-- \hvsync_gen|Add0~3\ = CARRY((!\hvsync_gen|Add0~1\) # (!\hvsync_gen|local_hpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datad => VCC,
	cin => \hvsync_gen|Add0~1\,
	combout => \hvsync_gen|Add0~2_combout\,
	cout => \hvsync_gen|Add0~3\);

-- Location: FF_X23_Y18_N7
\hvsync_gen|local_hpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(1));

-- Location: LCCOMB_X23_Y18_N8
\hvsync_gen|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~4_combout\ = (\hvsync_gen|local_hpos\(2) & (\hvsync_gen|Add0~3\ $ (GND))) # (!\hvsync_gen|local_hpos\(2) & (!\hvsync_gen|Add0~3\ & VCC))
-- \hvsync_gen|Add0~5\ = CARRY((\hvsync_gen|local_hpos\(2) & !\hvsync_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(2),
	datad => VCC,
	cin => \hvsync_gen|Add0~3\,
	combout => \hvsync_gen|Add0~4_combout\,
	cout => \hvsync_gen|Add0~5\);

-- Location: FF_X23_Y18_N9
\hvsync_gen|local_hpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(2));

-- Location: LCCOMB_X23_Y18_N10
\hvsync_gen|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~6_combout\ = (\hvsync_gen|local_hpos\(3) & (!\hvsync_gen|Add0~5\)) # (!\hvsync_gen|local_hpos\(3) & ((\hvsync_gen|Add0~5\) # (GND)))
-- \hvsync_gen|Add0~7\ = CARRY((!\hvsync_gen|Add0~5\) # (!\hvsync_gen|local_hpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datad => VCC,
	cin => \hvsync_gen|Add0~5\,
	combout => \hvsync_gen|Add0~6_combout\,
	cout => \hvsync_gen|Add0~7\);

-- Location: FF_X23_Y18_N11
\hvsync_gen|local_hpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(3));

-- Location: LCCOMB_X23_Y18_N12
\hvsync_gen|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~8_combout\ = (\hvsync_gen|local_hpos\(4) & (\hvsync_gen|Add0~7\ $ (GND))) # (!\hvsync_gen|local_hpos\(4) & (!\hvsync_gen|Add0~7\ & VCC))
-- \hvsync_gen|Add0~9\ = CARRY((\hvsync_gen|local_hpos\(4) & !\hvsync_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datad => VCC,
	cin => \hvsync_gen|Add0~7\,
	combout => \hvsync_gen|Add0~8_combout\,
	cout => \hvsync_gen|Add0~9\);

-- Location: FF_X23_Y18_N13
\hvsync_gen|local_hpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(4));

-- Location: LCCOMB_X23_Y18_N14
\hvsync_gen|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~10_combout\ = (\hvsync_gen|local_hpos\(5) & (!\hvsync_gen|Add0~9\)) # (!\hvsync_gen|local_hpos\(5) & ((\hvsync_gen|Add0~9\) # (GND)))
-- \hvsync_gen|Add0~11\ = CARRY((!\hvsync_gen|Add0~9\) # (!\hvsync_gen|local_hpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(5),
	datad => VCC,
	cin => \hvsync_gen|Add0~9\,
	combout => \hvsync_gen|Add0~10_combout\,
	cout => \hvsync_gen|Add0~11\);

-- Location: LCCOMB_X23_Y20_N2
\hvsync_gen|local_hpos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_hpos~0_combout\ = (!\hvsync_gen|Equal0~2_combout\ & \hvsync_gen|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|Equal0~2_combout\,
	datac => \hvsync_gen|Add0~10_combout\,
	combout => \hvsync_gen|local_hpos~0_combout\);

-- Location: FF_X23_Y20_N3
\hvsync_gen|local_hpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_hpos~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(5));

-- Location: LCCOMB_X23_Y18_N16
\hvsync_gen|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~12_combout\ = (\hvsync_gen|local_hpos\(6) & (\hvsync_gen|Add0~11\ $ (GND))) # (!\hvsync_gen|local_hpos\(6) & (!\hvsync_gen|Add0~11\ & VCC))
-- \hvsync_gen|Add0~13\ = CARRY((\hvsync_gen|local_hpos\(6) & !\hvsync_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(6),
	datad => VCC,
	cin => \hvsync_gen|Add0~11\,
	combout => \hvsync_gen|Add0~12_combout\,
	cout => \hvsync_gen|Add0~13\);

-- Location: FF_X23_Y18_N17
\hvsync_gen|local_hpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(6));

-- Location: LCCOMB_X23_Y18_N18
\hvsync_gen|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~14_combout\ = (\hvsync_gen|local_hpos\(7) & (!\hvsync_gen|Add0~13\)) # (!\hvsync_gen|local_hpos\(7) & ((\hvsync_gen|Add0~13\) # (GND)))
-- \hvsync_gen|Add0~15\ = CARRY((!\hvsync_gen|Add0~13\) # (!\hvsync_gen|local_hpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(7),
	datad => VCC,
	cin => \hvsync_gen|Add0~13\,
	combout => \hvsync_gen|Add0~14_combout\,
	cout => \hvsync_gen|Add0~15\);

-- Location: FF_X23_Y18_N19
\hvsync_gen|local_hpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(7));

-- Location: LCCOMB_X23_Y18_N20
\hvsync_gen|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~16_combout\ = (\hvsync_gen|local_hpos\(8) & (\hvsync_gen|Add0~15\ $ (GND))) # (!\hvsync_gen|local_hpos\(8) & (!\hvsync_gen|Add0~15\ & VCC))
-- \hvsync_gen|Add0~17\ = CARRY((\hvsync_gen|local_hpos\(8) & !\hvsync_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(8),
	datad => VCC,
	cin => \hvsync_gen|Add0~15\,
	combout => \hvsync_gen|Add0~16_combout\,
	cout => \hvsync_gen|Add0~17\);

-- Location: LCCOMB_X23_Y18_N22
\hvsync_gen|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~18_combout\ = \hvsync_gen|Add0~17\ $ (\hvsync_gen|local_hpos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hvsync_gen|local_hpos\(9),
	cin => \hvsync_gen|Add0~17\,
	combout => \hvsync_gen|Add0~18_combout\);

-- Location: LCCOMB_X23_Y22_N0
\hvsync_gen|local_hpos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_hpos~1_combout\ = (!\hvsync_gen|Equal0~2_combout\ & \hvsync_gen|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Equal0~2_combout\,
	datad => \hvsync_gen|Add0~18_combout\,
	combout => \hvsync_gen|local_hpos~1_combout\);

-- Location: FF_X23_Y22_N1
\hvsync_gen|local_hpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_hpos~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(9));

-- Location: LCCOMB_X23_Y18_N26
\hvsync_gen|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal0~1_combout\ = (\hvsync_gen|local_hpos\(1) & (!\hvsync_gen|local_hpos\(6) & (\hvsync_gen|local_hpos\(2) & \hvsync_gen|local_hpos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \hvsync_gen|local_hpos\(6),
	datac => \hvsync_gen|local_hpos\(2),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \hvsync_gen|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y18_N0
\hvsync_gen|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal0~0_combout\ = (\hvsync_gen|local_hpos\(3) & (!\hvsync_gen|local_hpos\(5) & (\hvsync_gen|local_hpos\(8) & !\hvsync_gen|local_hpos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \hvsync_gen|local_hpos\(5),
	datac => \hvsync_gen|local_hpos\(8),
	datad => \hvsync_gen|local_hpos\(7),
	combout => \hvsync_gen|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\hvsync_gen|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal0~2_combout\ = (\hvsync_gen|Equal0~1_combout\ & (\hvsync_gen|Equal0~0_combout\ & (\hvsync_gen|local_hpos\(0) & \hvsync_gen|local_hpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|Equal0~1_combout\,
	datab => \hvsync_gen|Equal0~0_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \hvsync_gen|local_hpos\(4),
	combout => \hvsync_gen|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y22_N26
\hvsync_gen|local_hpos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_hpos~2_combout\ = (!\hvsync_gen|Equal0~2_combout\ & \hvsync_gen|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Equal0~2_combout\,
	datad => \hvsync_gen|Add0~16_combout\,
	combout => \hvsync_gen|local_hpos~2_combout\);

-- Location: FF_X23_Y22_N27
\hvsync_gen|local_hpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_hpos~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_hpos\(8));

-- Location: LCCOMB_X24_Y17_N2
\hvsync_gen|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~0_combout\ = ((\hvsync_gen|local_hpos\(6) & (\hvsync_gen|local_hpos\(5) & \hvsync_gen|local_hpos\(4))) # (!\hvsync_gen|local_hpos\(6) & (!\hvsync_gen|local_hpos\(5) & !\hvsync_gen|local_hpos\(4)))) # (!\hvsync_gen|local_hpos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(6),
	datab => \hvsync_gen|local_hpos\(5),
	datac => \hvsync_gen|local_hpos\(4),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \hvsync_gen|process_0~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\hvsync_gen|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~1_combout\ = (\hvsync_gen|local_hpos\(8)) # ((\hvsync_gen|process_0~0_combout\) # (!\hvsync_gen|local_hpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(8),
	datac => \hvsync_gen|local_hpos\(7),
	datad => \hvsync_gen|process_0~0_combout\,
	combout => \hvsync_gen|process_0~1_combout\);

-- Location: FF_X24_Y17_N1
\hvsync_gen|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|process_0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|hsync~q\);

-- Location: LCCOMB_X23_Y22_N6
\hvsync_gen|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~0_combout\ = \hvsync_gen|local_vpos\(0) $ (VCC)
-- \hvsync_gen|Add1~1\ = CARRY(\hvsync_gen|local_vpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datad => VCC,
	combout => \hvsync_gen|Add1~0_combout\,
	cout => \hvsync_gen|Add1~1\);

-- Location: LCCOMB_X23_Y22_N16
\hvsync_gen|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~10_combout\ = (\hvsync_gen|local_vpos\(5) & (!\hvsync_gen|Add1~9\)) # (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|Add1~9\) # (GND)))
-- \hvsync_gen|Add1~11\ = CARRY((!\hvsync_gen|Add1~9\) # (!\hvsync_gen|local_vpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(5),
	datad => VCC,
	cin => \hvsync_gen|Add1~9\,
	combout => \hvsync_gen|Add1~10_combout\,
	cout => \hvsync_gen|Add1~11\);

-- Location: LCCOMB_X23_Y22_N18
\hvsync_gen|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~12_combout\ = (\hvsync_gen|local_vpos\(6) & (\hvsync_gen|Add1~11\ $ (GND))) # (!\hvsync_gen|local_vpos\(6) & (!\hvsync_gen|Add1~11\ & VCC))
-- \hvsync_gen|Add1~13\ = CARRY((\hvsync_gen|local_vpos\(6) & !\hvsync_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(6),
	datad => VCC,
	cin => \hvsync_gen|Add1~11\,
	combout => \hvsync_gen|Add1~12_combout\,
	cout => \hvsync_gen|Add1~13\);

-- Location: FF_X23_Y22_N19
\hvsync_gen|local_vpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add1~12_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(6));

-- Location: LCCOMB_X23_Y22_N20
\hvsync_gen|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~14_combout\ = (\hvsync_gen|local_vpos\(7) & (!\hvsync_gen|Add1~13\)) # (!\hvsync_gen|local_vpos\(7) & ((\hvsync_gen|Add1~13\) # (GND)))
-- \hvsync_gen|Add1~15\ = CARRY((!\hvsync_gen|Add1~13\) # (!\hvsync_gen|local_vpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(7),
	datad => VCC,
	cin => \hvsync_gen|Add1~13\,
	combout => \hvsync_gen|Add1~14_combout\,
	cout => \hvsync_gen|Add1~15\);

-- Location: FF_X23_Y22_N21
\hvsync_gen|local_vpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add1~14_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(7));

-- Location: LCCOMB_X23_Y22_N22
\hvsync_gen|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~16_combout\ = (\hvsync_gen|local_vpos\(8) & (\hvsync_gen|Add1~15\ $ (GND))) # (!\hvsync_gen|local_vpos\(8) & (!\hvsync_gen|Add1~15\ & VCC))
-- \hvsync_gen|Add1~17\ = CARRY((\hvsync_gen|local_vpos\(8) & !\hvsync_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(8),
	datad => VCC,
	cin => \hvsync_gen|Add1~15\,
	combout => \hvsync_gen|Add1~16_combout\,
	cout => \hvsync_gen|Add1~17\);

-- Location: FF_X23_Y22_N23
\hvsync_gen|local_vpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add1~16_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(8));

-- Location: LCCOMB_X23_Y24_N28
\hvsync_gen|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal1~1_combout\ = (!\hvsync_gen|local_vpos\(7) & (!\hvsync_gen|local_vpos\(8) & (!\hvsync_gen|local_vpos\(0) & !\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(7),
	datab => \hvsync_gen|local_vpos\(8),
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \hvsync_gen|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y22_N24
\hvsync_gen|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~18_combout\ = \hvsync_gen|Add1~17\ $ (\hvsync_gen|local_vpos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hvsync_gen|local_vpos\(9),
	cin => \hvsync_gen|Add1~17\,
	combout => \hvsync_gen|Add1~18_combout\);

-- Location: LCCOMB_X23_Y22_N2
\hvsync_gen|local_vpos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~1_combout\ = (\hvsync_gen|Add1~18_combout\ & !\hvsync_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Add1~18_combout\,
	datad => \hvsync_gen|Equal1~2_combout\,
	combout => \hvsync_gen|local_vpos~1_combout\);

-- Location: FF_X23_Y22_N3
\hvsync_gen|local_vpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_vpos~1_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(9));

-- Location: LCCOMB_X23_Y24_N26
\hvsync_gen|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal1~0_combout\ = (\hvsync_gen|local_vpos\(9) & (!\hvsync_gen|local_vpos\(6) & (!\hvsync_gen|local_vpos\(4) & !\hvsync_gen|local_vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(9),
	datab => \hvsync_gen|local_vpos\(6),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \hvsync_gen|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y24_N22
\hvsync_gen|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal1~2_combout\ = (\hvsync_gen|local_vpos\(3) & (\hvsync_gen|Equal1~1_combout\ & (\hvsync_gen|Equal1~0_combout\ & \hvsync_gen|local_vpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \hvsync_gen|Equal1~1_combout\,
	datac => \hvsync_gen|Equal1~0_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \hvsync_gen|Equal1~2_combout\);

-- Location: LCCOMB_X23_Y22_N30
\hvsync_gen|local_vpos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~3_combout\ = (\hvsync_gen|Add1~0_combout\ & !\hvsync_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|Add1~0_combout\,
	datad => \hvsync_gen|Equal1~2_combout\,
	combout => \hvsync_gen|local_vpos~3_combout\);

-- Location: FF_X23_Y22_N31
\hvsync_gen|local_vpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_vpos~3_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(0));

-- Location: LCCOMB_X23_Y22_N8
\hvsync_gen|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~2_combout\ = (\hvsync_gen|local_vpos\(1) & (!\hvsync_gen|Add1~1\)) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|Add1~1\) # (GND)))
-- \hvsync_gen|Add1~3\ = CARRY((!\hvsync_gen|Add1~1\) # (!\hvsync_gen|local_vpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(1),
	datad => VCC,
	cin => \hvsync_gen|Add1~1\,
	combout => \hvsync_gen|Add1~2_combout\,
	cout => \hvsync_gen|Add1~3\);

-- Location: FF_X23_Y22_N9
\hvsync_gen|local_vpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add1~2_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(1));

-- Location: LCCOMB_X23_Y22_N10
\hvsync_gen|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~4_combout\ = (\hvsync_gen|local_vpos\(2) & (\hvsync_gen|Add1~3\ $ (GND))) # (!\hvsync_gen|local_vpos\(2) & (!\hvsync_gen|Add1~3\ & VCC))
-- \hvsync_gen|Add1~5\ = CARRY((\hvsync_gen|local_vpos\(2) & !\hvsync_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(2),
	datad => VCC,
	cin => \hvsync_gen|Add1~3\,
	combout => \hvsync_gen|Add1~4_combout\,
	cout => \hvsync_gen|Add1~5\);

-- Location: LCCOMB_X23_Y22_N28
\hvsync_gen|local_vpos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~0_combout\ = (\hvsync_gen|Add1~4_combout\ & !\hvsync_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|Add1~4_combout\,
	datad => \hvsync_gen|Equal1~2_combout\,
	combout => \hvsync_gen|local_vpos~0_combout\);

-- Location: FF_X23_Y22_N29
\hvsync_gen|local_vpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_vpos~0_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(2));

-- Location: LCCOMB_X23_Y22_N12
\hvsync_gen|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~6_combout\ = (\hvsync_gen|local_vpos\(3) & (!\hvsync_gen|Add1~5\)) # (!\hvsync_gen|local_vpos\(3) & ((\hvsync_gen|Add1~5\) # (GND)))
-- \hvsync_gen|Add1~7\ = CARRY((!\hvsync_gen|Add1~5\) # (!\hvsync_gen|local_vpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(3),
	datad => VCC,
	cin => \hvsync_gen|Add1~5\,
	combout => \hvsync_gen|Add1~6_combout\,
	cout => \hvsync_gen|Add1~7\);

-- Location: LCCOMB_X23_Y22_N4
\hvsync_gen|local_vpos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~2_combout\ = (\hvsync_gen|Add1~6_combout\ & !\hvsync_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|Add1~6_combout\,
	datad => \hvsync_gen|Equal1~2_combout\,
	combout => \hvsync_gen|local_vpos~2_combout\);

-- Location: FF_X23_Y22_N5
\hvsync_gen|local_vpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|local_vpos~2_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(3));

-- Location: LCCOMB_X23_Y22_N14
\hvsync_gen|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~8_combout\ = (\hvsync_gen|local_vpos\(4) & (\hvsync_gen|Add1~7\ $ (GND))) # (!\hvsync_gen|local_vpos\(4) & (!\hvsync_gen|Add1~7\ & VCC))
-- \hvsync_gen|Add1~9\ = CARRY((\hvsync_gen|local_vpos\(4) & !\hvsync_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(4),
	datad => VCC,
	cin => \hvsync_gen|Add1~7\,
	combout => \hvsync_gen|Add1~8_combout\,
	cout => \hvsync_gen|Add1~9\);

-- Location: FF_X23_Y22_N15
\hvsync_gen|local_vpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add1~8_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(4));

-- Location: FF_X23_Y22_N17
\hvsync_gen|local_vpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|Add1~10_combout\,
	clrn => \reset~input_o\,
	ena => \hvsync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|local_vpos\(5));

-- Location: LCCOMB_X23_Y25_N2
\Mux46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\hvsync_gen|local_vpos\(5) & !\hvsync_gen|local_vpos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X23_Y25_N26
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\hvsync_gen|local_vpos\(7) & (\hvsync_gen|local_vpos\(8) & !\hvsync_gen|local_vpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(7),
	datac => \hvsync_gen|local_vpos\(8),
	datad => \hvsync_gen|local_vpos\(9),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X23_Y25_N28
\hvsync_gen|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~2_combout\ = (((\hvsync_gen|local_vpos\(2)) # (!\hvsync_gen|local_vpos\(6))) # (!\hvsync_gen|local_vpos\(3))) # (!\process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \hvsync_gen|local_vpos\(3),
	datac => \hvsync_gen|local_vpos\(6),
	datad => \hvsync_gen|local_vpos\(2),
	combout => \hvsync_gen|process_0~2_combout\);

-- Location: LCCOMB_X23_Y25_N0
\hvsync_gen|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~3_combout\ = ((\hvsync_gen|process_0~2_combout\) # ((!\hvsync_gen|local_vpos\(1) & !\hvsync_gen|local_vpos\(0)))) # (!\Mux46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~0_combout\,
	datab => \hvsync_gen|process_0~2_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \hvsync_gen|local_vpos\(0),
	combout => \hvsync_gen|process_0~3_combout\);

-- Location: FF_X23_Y25_N1
\hvsync_gen|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|process_0~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|vsync~q\);

-- Location: LCCOMB_X23_Y23_N28
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\hvsync_gen|local_vpos\(1)) # (!\hvsync_gen|local_vpos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y23_N14
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\hvsync_gen|local_vpos\(4) & (!\LessThan2~0_combout\ & (\hvsync_gen|local_vpos\(6) & \hvsync_gen|local_vpos\(3)))) # (!\hvsync_gen|local_vpos\(4) & (\LessThan2~0_combout\ & (!\hvsync_gen|local_vpos\(6) & 
-- !\hvsync_gen|local_vpos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \LessThan2~0_combout\,
	datac => \hvsync_gen|local_vpos\(6),
	datad => \hvsync_gen|local_vpos\(3),
	combout => \process_1~2_combout\);

-- Location: IOIBUF_X0_Y23_N15
\btn_right~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_right,
	o => \btn_right~input_o\);

-- Location: LCCOMB_X14_Y21_N0
\debouncer_right|counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[0]~32_combout\ = \debouncer_right|counter\(0) $ (VCC)
-- \debouncer_right|counter[0]~33\ = CARRY(\debouncer_right|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(0),
	datad => VCC,
	combout => \debouncer_right|counter[0]~32_combout\,
	cout => \debouncer_right|counter[0]~33\);

-- Location: LCCOMB_X15_Y20_N12
\debouncer_right|debouncing~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|debouncing~0_combout\ = (\debouncer_right|LessThan0~8_combout\ & (\btn_right~input_o\ $ (((!\debouncer_right|debounced_signal~q\))))) # (!\debouncer_right|LessThan0~8_combout\ & (!\debouncer_right|debouncing~q\ & (\btn_right~input_o\ $ 
-- (!\debouncer_right|debounced_signal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_right~input_o\,
	datab => \debouncer_right|LessThan0~8_combout\,
	datac => \debouncer_right|debouncing~q\,
	datad => \debouncer_right|debounced_signal~q\,
	combout => \debouncer_right|debouncing~0_combout\);

-- Location: FF_X15_Y20_N13
\debouncer_right|debouncing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|debouncing~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|debouncing~q\);

-- Location: LCCOMB_X15_Y20_N14
\debouncer_right|counter[16]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[16]~96_combout\ = (\btn_right~input_o\ $ (\debouncer_right|debounced_signal~q\)) # (!\debouncer_right|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_right~input_o\,
	datab => \debouncer_right|debounced_signal~q\,
	datad => \debouncer_right|debouncing~q\,
	combout => \debouncer_right|counter[16]~96_combout\);

-- Location: LCCOMB_X15_Y20_N0
\debouncer_right|counter[16]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[16]~97_combout\ = ((\debouncer_right|LessThan0~8_combout\) # (\debouncer_right|debounced_signal~q\ $ (\btn_right~input_o\))) # (!\debouncer_right|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|debouncing~q\,
	datab => \debouncer_right|debounced_signal~q\,
	datac => \btn_right~input_o\,
	datad => \debouncer_right|LessThan0~8_combout\,
	combout => \debouncer_right|counter[16]~97_combout\);

-- Location: FF_X14_Y21_N1
\debouncer_right|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[0]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(0));

-- Location: LCCOMB_X14_Y21_N2
\debouncer_right|counter[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[1]~34_combout\ = (\debouncer_right|counter\(1) & (!\debouncer_right|counter[0]~33\)) # (!\debouncer_right|counter\(1) & ((\debouncer_right|counter[0]~33\) # (GND)))
-- \debouncer_right|counter[1]~35\ = CARRY((!\debouncer_right|counter[0]~33\) # (!\debouncer_right|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(1),
	datad => VCC,
	cin => \debouncer_right|counter[0]~33\,
	combout => \debouncer_right|counter[1]~34_combout\,
	cout => \debouncer_right|counter[1]~35\);

-- Location: FF_X14_Y21_N3
\debouncer_right|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[1]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(1));

-- Location: LCCOMB_X14_Y21_N4
\debouncer_right|counter[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[2]~36_combout\ = (\debouncer_right|counter\(2) & (\debouncer_right|counter[1]~35\ $ (GND))) # (!\debouncer_right|counter\(2) & (!\debouncer_right|counter[1]~35\ & VCC))
-- \debouncer_right|counter[2]~37\ = CARRY((\debouncer_right|counter\(2) & !\debouncer_right|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(2),
	datad => VCC,
	cin => \debouncer_right|counter[1]~35\,
	combout => \debouncer_right|counter[2]~36_combout\,
	cout => \debouncer_right|counter[2]~37\);

-- Location: FF_X14_Y21_N5
\debouncer_right|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[2]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(2));

-- Location: LCCOMB_X14_Y21_N6
\debouncer_right|counter[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[3]~38_combout\ = (\debouncer_right|counter\(3) & (!\debouncer_right|counter[2]~37\)) # (!\debouncer_right|counter\(3) & ((\debouncer_right|counter[2]~37\) # (GND)))
-- \debouncer_right|counter[3]~39\ = CARRY((!\debouncer_right|counter[2]~37\) # (!\debouncer_right|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(3),
	datad => VCC,
	cin => \debouncer_right|counter[2]~37\,
	combout => \debouncer_right|counter[3]~38_combout\,
	cout => \debouncer_right|counter[3]~39\);

-- Location: FF_X14_Y21_N7
\debouncer_right|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[3]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(3));

-- Location: LCCOMB_X14_Y21_N8
\debouncer_right|counter[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[4]~40_combout\ = (\debouncer_right|counter\(4) & (\debouncer_right|counter[3]~39\ $ (GND))) # (!\debouncer_right|counter\(4) & (!\debouncer_right|counter[3]~39\ & VCC))
-- \debouncer_right|counter[4]~41\ = CARRY((\debouncer_right|counter\(4) & !\debouncer_right|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(4),
	datad => VCC,
	cin => \debouncer_right|counter[3]~39\,
	combout => \debouncer_right|counter[4]~40_combout\,
	cout => \debouncer_right|counter[4]~41\);

-- Location: FF_X14_Y21_N9
\debouncer_right|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[4]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(4));

-- Location: LCCOMB_X14_Y21_N10
\debouncer_right|counter[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[5]~42_combout\ = (\debouncer_right|counter\(5) & (!\debouncer_right|counter[4]~41\)) # (!\debouncer_right|counter\(5) & ((\debouncer_right|counter[4]~41\) # (GND)))
-- \debouncer_right|counter[5]~43\ = CARRY((!\debouncer_right|counter[4]~41\) # (!\debouncer_right|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(5),
	datad => VCC,
	cin => \debouncer_right|counter[4]~41\,
	combout => \debouncer_right|counter[5]~42_combout\,
	cout => \debouncer_right|counter[5]~43\);

-- Location: FF_X14_Y21_N11
\debouncer_right|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[5]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(5));

-- Location: LCCOMB_X14_Y21_N12
\debouncer_right|counter[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[6]~44_combout\ = (\debouncer_right|counter\(6) & (\debouncer_right|counter[5]~43\ $ (GND))) # (!\debouncer_right|counter\(6) & (!\debouncer_right|counter[5]~43\ & VCC))
-- \debouncer_right|counter[6]~45\ = CARRY((\debouncer_right|counter\(6) & !\debouncer_right|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(6),
	datad => VCC,
	cin => \debouncer_right|counter[5]~43\,
	combout => \debouncer_right|counter[6]~44_combout\,
	cout => \debouncer_right|counter[6]~45\);

-- Location: FF_X14_Y21_N13
\debouncer_right|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[6]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(6));

-- Location: LCCOMB_X14_Y21_N14
\debouncer_right|counter[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[7]~46_combout\ = (\debouncer_right|counter\(7) & (!\debouncer_right|counter[6]~45\)) # (!\debouncer_right|counter\(7) & ((\debouncer_right|counter[6]~45\) # (GND)))
-- \debouncer_right|counter[7]~47\ = CARRY((!\debouncer_right|counter[6]~45\) # (!\debouncer_right|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(7),
	datad => VCC,
	cin => \debouncer_right|counter[6]~45\,
	combout => \debouncer_right|counter[7]~46_combout\,
	cout => \debouncer_right|counter[7]~47\);

-- Location: FF_X14_Y21_N15
\debouncer_right|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[7]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(7));

-- Location: LCCOMB_X14_Y21_N16
\debouncer_right|counter[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[8]~48_combout\ = (\debouncer_right|counter\(8) & (\debouncer_right|counter[7]~47\ $ (GND))) # (!\debouncer_right|counter\(8) & (!\debouncer_right|counter[7]~47\ & VCC))
-- \debouncer_right|counter[8]~49\ = CARRY((\debouncer_right|counter\(8) & !\debouncer_right|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(8),
	datad => VCC,
	cin => \debouncer_right|counter[7]~47\,
	combout => \debouncer_right|counter[8]~48_combout\,
	cout => \debouncer_right|counter[8]~49\);

-- Location: FF_X14_Y21_N17
\debouncer_right|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[8]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(8));

-- Location: LCCOMB_X14_Y21_N18
\debouncer_right|counter[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[9]~50_combout\ = (\debouncer_right|counter\(9) & (!\debouncer_right|counter[8]~49\)) # (!\debouncer_right|counter\(9) & ((\debouncer_right|counter[8]~49\) # (GND)))
-- \debouncer_right|counter[9]~51\ = CARRY((!\debouncer_right|counter[8]~49\) # (!\debouncer_right|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(9),
	datad => VCC,
	cin => \debouncer_right|counter[8]~49\,
	combout => \debouncer_right|counter[9]~50_combout\,
	cout => \debouncer_right|counter[9]~51\);

-- Location: FF_X14_Y21_N19
\debouncer_right|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[9]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(9));

-- Location: LCCOMB_X14_Y21_N20
\debouncer_right|counter[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[10]~52_combout\ = (\debouncer_right|counter\(10) & (\debouncer_right|counter[9]~51\ $ (GND))) # (!\debouncer_right|counter\(10) & (!\debouncer_right|counter[9]~51\ & VCC))
-- \debouncer_right|counter[10]~53\ = CARRY((\debouncer_right|counter\(10) & !\debouncer_right|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(10),
	datad => VCC,
	cin => \debouncer_right|counter[9]~51\,
	combout => \debouncer_right|counter[10]~52_combout\,
	cout => \debouncer_right|counter[10]~53\);

-- Location: FF_X14_Y21_N21
\debouncer_right|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[10]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(10));

-- Location: LCCOMB_X14_Y21_N22
\debouncer_right|counter[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[11]~54_combout\ = (\debouncer_right|counter\(11) & (!\debouncer_right|counter[10]~53\)) # (!\debouncer_right|counter\(11) & ((\debouncer_right|counter[10]~53\) # (GND)))
-- \debouncer_right|counter[11]~55\ = CARRY((!\debouncer_right|counter[10]~53\) # (!\debouncer_right|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(11),
	datad => VCC,
	cin => \debouncer_right|counter[10]~53\,
	combout => \debouncer_right|counter[11]~54_combout\,
	cout => \debouncer_right|counter[11]~55\);

-- Location: FF_X14_Y21_N23
\debouncer_right|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[11]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(11));

-- Location: LCCOMB_X14_Y21_N24
\debouncer_right|counter[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[12]~56_combout\ = (\debouncer_right|counter\(12) & (\debouncer_right|counter[11]~55\ $ (GND))) # (!\debouncer_right|counter\(12) & (!\debouncer_right|counter[11]~55\ & VCC))
-- \debouncer_right|counter[12]~57\ = CARRY((\debouncer_right|counter\(12) & !\debouncer_right|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(12),
	datad => VCC,
	cin => \debouncer_right|counter[11]~55\,
	combout => \debouncer_right|counter[12]~56_combout\,
	cout => \debouncer_right|counter[12]~57\);

-- Location: FF_X14_Y21_N25
\debouncer_right|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[12]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(12));

-- Location: LCCOMB_X14_Y21_N26
\debouncer_right|counter[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[13]~58_combout\ = (\debouncer_right|counter\(13) & (!\debouncer_right|counter[12]~57\)) # (!\debouncer_right|counter\(13) & ((\debouncer_right|counter[12]~57\) # (GND)))
-- \debouncer_right|counter[13]~59\ = CARRY((!\debouncer_right|counter[12]~57\) # (!\debouncer_right|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(13),
	datad => VCC,
	cin => \debouncer_right|counter[12]~57\,
	combout => \debouncer_right|counter[13]~58_combout\,
	cout => \debouncer_right|counter[13]~59\);

-- Location: FF_X14_Y21_N27
\debouncer_right|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[13]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(13));

-- Location: LCCOMB_X14_Y21_N28
\debouncer_right|counter[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[14]~60_combout\ = (\debouncer_right|counter\(14) & (\debouncer_right|counter[13]~59\ $ (GND))) # (!\debouncer_right|counter\(14) & (!\debouncer_right|counter[13]~59\ & VCC))
-- \debouncer_right|counter[14]~61\ = CARRY((\debouncer_right|counter\(14) & !\debouncer_right|counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(14),
	datad => VCC,
	cin => \debouncer_right|counter[13]~59\,
	combout => \debouncer_right|counter[14]~60_combout\,
	cout => \debouncer_right|counter[14]~61\);

-- Location: FF_X14_Y21_N29
\debouncer_right|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[14]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(14));

-- Location: LCCOMB_X15_Y20_N18
\debouncer_right|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~4_combout\ = ((!\debouncer_right|counter\(6) & (!\debouncer_right|counter\(7) & !\debouncer_right|counter\(5)))) # (!\debouncer_right|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(6),
	datab => \debouncer_right|counter\(7),
	datac => \debouncer_right|counter\(8),
	datad => \debouncer_right|counter\(5),
	combout => \debouncer_right|LessThan0~4_combout\);

-- Location: LCCOMB_X15_Y20_N28
\debouncer_right|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~5_combout\ = (!\debouncer_right|counter\(11) & (!\debouncer_right|counter\(9) & (!\debouncer_right|counter\(12) & !\debouncer_right|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(11),
	datab => \debouncer_right|counter\(9),
	datac => \debouncer_right|counter\(12),
	datad => \debouncer_right|counter\(10),
	combout => \debouncer_right|LessThan0~5_combout\);

-- Location: LCCOMB_X15_Y20_N22
\debouncer_right|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~6_combout\ = (!\debouncer_right|counter\(14) & (((\debouncer_right|LessThan0~4_combout\ & \debouncer_right|LessThan0~5_combout\)) # (!\debouncer_right|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(14),
	datab => \debouncer_right|LessThan0~4_combout\,
	datac => \debouncer_right|counter\(13),
	datad => \debouncer_right|LessThan0~5_combout\,
	combout => \debouncer_right|LessThan0~6_combout\);

-- Location: LCCOMB_X14_Y21_N30
\debouncer_right|counter[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[15]~62_combout\ = (\debouncer_right|counter\(15) & (!\debouncer_right|counter[14]~61\)) # (!\debouncer_right|counter\(15) & ((\debouncer_right|counter[14]~61\) # (GND)))
-- \debouncer_right|counter[15]~63\ = CARRY((!\debouncer_right|counter[14]~61\) # (!\debouncer_right|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(15),
	datad => VCC,
	cin => \debouncer_right|counter[14]~61\,
	combout => \debouncer_right|counter[15]~62_combout\,
	cout => \debouncer_right|counter[15]~63\);

-- Location: FF_X14_Y21_N31
\debouncer_right|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[15]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(15));

-- Location: LCCOMB_X14_Y20_N0
\debouncer_right|counter[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[16]~64_combout\ = (\debouncer_right|counter\(16) & (\debouncer_right|counter[15]~63\ $ (GND))) # (!\debouncer_right|counter\(16) & (!\debouncer_right|counter[15]~63\ & VCC))
-- \debouncer_right|counter[16]~65\ = CARRY((\debouncer_right|counter\(16) & !\debouncer_right|counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(16),
	datad => VCC,
	cin => \debouncer_right|counter[15]~63\,
	combout => \debouncer_right|counter[16]~64_combout\,
	cout => \debouncer_right|counter[16]~65\);

-- Location: FF_X14_Y20_N1
\debouncer_right|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[16]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(16));

-- Location: LCCOMB_X14_Y20_N2
\debouncer_right|counter[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[17]~66_combout\ = (\debouncer_right|counter\(17) & (!\debouncer_right|counter[16]~65\)) # (!\debouncer_right|counter\(17) & ((\debouncer_right|counter[16]~65\) # (GND)))
-- \debouncer_right|counter[17]~67\ = CARRY((!\debouncer_right|counter[16]~65\) # (!\debouncer_right|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(17),
	datad => VCC,
	cin => \debouncer_right|counter[16]~65\,
	combout => \debouncer_right|counter[17]~66_combout\,
	cout => \debouncer_right|counter[17]~67\);

-- Location: FF_X14_Y20_N3
\debouncer_right|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[17]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(17));

-- Location: LCCOMB_X14_Y20_N4
\debouncer_right|counter[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[18]~68_combout\ = (\debouncer_right|counter\(18) & (\debouncer_right|counter[17]~67\ $ (GND))) # (!\debouncer_right|counter\(18) & (!\debouncer_right|counter[17]~67\ & VCC))
-- \debouncer_right|counter[18]~69\ = CARRY((\debouncer_right|counter\(18) & !\debouncer_right|counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(18),
	datad => VCC,
	cin => \debouncer_right|counter[17]~67\,
	combout => \debouncer_right|counter[18]~68_combout\,
	cout => \debouncer_right|counter[18]~69\);

-- Location: FF_X14_Y20_N5
\debouncer_right|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[18]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(18));

-- Location: LCCOMB_X14_Y20_N6
\debouncer_right|counter[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[19]~70_combout\ = (\debouncer_right|counter\(19) & (!\debouncer_right|counter[18]~69\)) # (!\debouncer_right|counter\(19) & ((\debouncer_right|counter[18]~69\) # (GND)))
-- \debouncer_right|counter[19]~71\ = CARRY((!\debouncer_right|counter[18]~69\) # (!\debouncer_right|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(19),
	datad => VCC,
	cin => \debouncer_right|counter[18]~69\,
	combout => \debouncer_right|counter[19]~70_combout\,
	cout => \debouncer_right|counter[19]~71\);

-- Location: FF_X14_Y20_N7
\debouncer_right|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[19]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(19));

-- Location: LCCOMB_X14_Y20_N8
\debouncer_right|counter[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[20]~72_combout\ = (\debouncer_right|counter\(20) & (\debouncer_right|counter[19]~71\ $ (GND))) # (!\debouncer_right|counter\(20) & (!\debouncer_right|counter[19]~71\ & VCC))
-- \debouncer_right|counter[20]~73\ = CARRY((\debouncer_right|counter\(20) & !\debouncer_right|counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(20),
	datad => VCC,
	cin => \debouncer_right|counter[19]~71\,
	combout => \debouncer_right|counter[20]~72_combout\,
	cout => \debouncer_right|counter[20]~73\);

-- Location: FF_X14_Y20_N9
\debouncer_right|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[20]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(20));

-- Location: LCCOMB_X14_Y20_N10
\debouncer_right|counter[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[21]~74_combout\ = (\debouncer_right|counter\(21) & (!\debouncer_right|counter[20]~73\)) # (!\debouncer_right|counter\(21) & ((\debouncer_right|counter[20]~73\) # (GND)))
-- \debouncer_right|counter[21]~75\ = CARRY((!\debouncer_right|counter[20]~73\) # (!\debouncer_right|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(21),
	datad => VCC,
	cin => \debouncer_right|counter[20]~73\,
	combout => \debouncer_right|counter[21]~74_combout\,
	cout => \debouncer_right|counter[21]~75\);

-- Location: FF_X14_Y20_N11
\debouncer_right|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[21]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(21));

-- Location: LCCOMB_X14_Y20_N12
\debouncer_right|counter[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[22]~76_combout\ = (\debouncer_right|counter\(22) & (\debouncer_right|counter[21]~75\ $ (GND))) # (!\debouncer_right|counter\(22) & (!\debouncer_right|counter[21]~75\ & VCC))
-- \debouncer_right|counter[22]~77\ = CARRY((\debouncer_right|counter\(22) & !\debouncer_right|counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(22),
	datad => VCC,
	cin => \debouncer_right|counter[21]~75\,
	combout => \debouncer_right|counter[22]~76_combout\,
	cout => \debouncer_right|counter[22]~77\);

-- Location: FF_X14_Y20_N13
\debouncer_right|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[22]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(22));

-- Location: LCCOMB_X14_Y20_N14
\debouncer_right|counter[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[23]~78_combout\ = (\debouncer_right|counter\(23) & (!\debouncer_right|counter[22]~77\)) # (!\debouncer_right|counter\(23) & ((\debouncer_right|counter[22]~77\) # (GND)))
-- \debouncer_right|counter[23]~79\ = CARRY((!\debouncer_right|counter[22]~77\) # (!\debouncer_right|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(23),
	datad => VCC,
	cin => \debouncer_right|counter[22]~77\,
	combout => \debouncer_right|counter[23]~78_combout\,
	cout => \debouncer_right|counter[23]~79\);

-- Location: FF_X14_Y20_N15
\debouncer_right|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[23]~78_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(23));

-- Location: LCCOMB_X14_Y20_N16
\debouncer_right|counter[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[24]~80_combout\ = (\debouncer_right|counter\(24) & (\debouncer_right|counter[23]~79\ $ (GND))) # (!\debouncer_right|counter\(24) & (!\debouncer_right|counter[23]~79\ & VCC))
-- \debouncer_right|counter[24]~81\ = CARRY((\debouncer_right|counter\(24) & !\debouncer_right|counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(24),
	datad => VCC,
	cin => \debouncer_right|counter[23]~79\,
	combout => \debouncer_right|counter[24]~80_combout\,
	cout => \debouncer_right|counter[24]~81\);

-- Location: FF_X14_Y20_N17
\debouncer_right|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[24]~80_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(24));

-- Location: LCCOMB_X14_Y20_N18
\debouncer_right|counter[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[25]~82_combout\ = (\debouncer_right|counter\(25) & (!\debouncer_right|counter[24]~81\)) # (!\debouncer_right|counter\(25) & ((\debouncer_right|counter[24]~81\) # (GND)))
-- \debouncer_right|counter[25]~83\ = CARRY((!\debouncer_right|counter[24]~81\) # (!\debouncer_right|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(25),
	datad => VCC,
	cin => \debouncer_right|counter[24]~81\,
	combout => \debouncer_right|counter[25]~82_combout\,
	cout => \debouncer_right|counter[25]~83\);

-- Location: FF_X14_Y20_N19
\debouncer_right|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[25]~82_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(25));

-- Location: LCCOMB_X14_Y20_N20
\debouncer_right|counter[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[26]~84_combout\ = (\debouncer_right|counter\(26) & (\debouncer_right|counter[25]~83\ $ (GND))) # (!\debouncer_right|counter\(26) & (!\debouncer_right|counter[25]~83\ & VCC))
-- \debouncer_right|counter[26]~85\ = CARRY((\debouncer_right|counter\(26) & !\debouncer_right|counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(26),
	datad => VCC,
	cin => \debouncer_right|counter[25]~83\,
	combout => \debouncer_right|counter[26]~84_combout\,
	cout => \debouncer_right|counter[26]~85\);

-- Location: FF_X14_Y20_N21
\debouncer_right|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[26]~84_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(26));

-- Location: LCCOMB_X14_Y20_N22
\debouncer_right|counter[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[27]~86_combout\ = (\debouncer_right|counter\(27) & (!\debouncer_right|counter[26]~85\)) # (!\debouncer_right|counter\(27) & ((\debouncer_right|counter[26]~85\) # (GND)))
-- \debouncer_right|counter[27]~87\ = CARRY((!\debouncer_right|counter[26]~85\) # (!\debouncer_right|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(27),
	datad => VCC,
	cin => \debouncer_right|counter[26]~85\,
	combout => \debouncer_right|counter[27]~86_combout\,
	cout => \debouncer_right|counter[27]~87\);

-- Location: FF_X14_Y20_N23
\debouncer_right|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[27]~86_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(27));

-- Location: LCCOMB_X14_Y20_N24
\debouncer_right|counter[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[28]~88_combout\ = (\debouncer_right|counter\(28) & (\debouncer_right|counter[27]~87\ $ (GND))) # (!\debouncer_right|counter\(28) & (!\debouncer_right|counter[27]~87\ & VCC))
-- \debouncer_right|counter[28]~89\ = CARRY((\debouncer_right|counter\(28) & !\debouncer_right|counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(28),
	datad => VCC,
	cin => \debouncer_right|counter[27]~87\,
	combout => \debouncer_right|counter[28]~88_combout\,
	cout => \debouncer_right|counter[28]~89\);

-- Location: FF_X14_Y20_N25
\debouncer_right|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[28]~88_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(28));

-- Location: LCCOMB_X14_Y20_N26
\debouncer_right|counter[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[29]~90_combout\ = (\debouncer_right|counter\(29) & (!\debouncer_right|counter[28]~89\)) # (!\debouncer_right|counter\(29) & ((\debouncer_right|counter[28]~89\) # (GND)))
-- \debouncer_right|counter[29]~91\ = CARRY((!\debouncer_right|counter[28]~89\) # (!\debouncer_right|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(29),
	datad => VCC,
	cin => \debouncer_right|counter[28]~89\,
	combout => \debouncer_right|counter[29]~90_combout\,
	cout => \debouncer_right|counter[29]~91\);

-- Location: FF_X14_Y20_N27
\debouncer_right|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[29]~90_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(29));

-- Location: LCCOMB_X14_Y20_N28
\debouncer_right|counter[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[30]~92_combout\ = (\debouncer_right|counter\(30) & (\debouncer_right|counter[29]~91\ $ (GND))) # (!\debouncer_right|counter\(30) & (!\debouncer_right|counter[29]~91\ & VCC))
-- \debouncer_right|counter[30]~93\ = CARRY((\debouncer_right|counter\(30) & !\debouncer_right|counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_right|counter\(30),
	datad => VCC,
	cin => \debouncer_right|counter[29]~91\,
	combout => \debouncer_right|counter[30]~92_combout\,
	cout => \debouncer_right|counter[30]~93\);

-- Location: FF_X14_Y20_N29
\debouncer_right|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[30]~92_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(30));

-- Location: LCCOMB_X14_Y20_N30
\debouncer_right|counter[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[31]~94_combout\ = \debouncer_right|counter\(31) $ (\debouncer_right|counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(31),
	cin => \debouncer_right|counter[30]~93\,
	combout => \debouncer_right|counter[31]~94_combout\);

-- Location: FF_X14_Y20_N31
\debouncer_right|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|counter[31]~94_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_right|counter[16]~96_combout\,
	ena => \debouncer_right|counter[16]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(31));

-- Location: LCCOMB_X15_Y20_N10
\debouncer_right|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~0_combout\ = (!\debouncer_right|counter\(22) & (!\debouncer_right|counter\(19) & (!\debouncer_right|counter\(20) & !\debouncer_right|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(22),
	datab => \debouncer_right|counter\(19),
	datac => \debouncer_right|counter\(20),
	datad => \debouncer_right|counter\(21),
	combout => \debouncer_right|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y20_N20
\debouncer_right|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~1_combout\ = (!\debouncer_right|counter\(23) & (!\debouncer_right|counter\(25) & (!\debouncer_right|counter\(24) & !\debouncer_right|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(23),
	datab => \debouncer_right|counter\(25),
	datac => \debouncer_right|counter\(24),
	datad => \debouncer_right|counter\(26),
	combout => \debouncer_right|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y20_N6
\debouncer_right|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~2_combout\ = (!\debouncer_right|counter\(30) & (!\debouncer_right|counter\(27) & (!\debouncer_right|counter\(29) & !\debouncer_right|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(30),
	datab => \debouncer_right|counter\(27),
	datac => \debouncer_right|counter\(29),
	datad => \debouncer_right|counter\(28),
	combout => \debouncer_right|LessThan0~2_combout\);

-- Location: LCCOMB_X15_Y20_N8
\debouncer_right|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~3_combout\ = (\debouncer_right|LessThan0~0_combout\ & (\debouncer_right|LessThan0~1_combout\ & \debouncer_right|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|LessThan0~0_combout\,
	datab => \debouncer_right|LessThan0~1_combout\,
	datad => \debouncer_right|LessThan0~2_combout\,
	combout => \debouncer_right|LessThan0~3_combout\);

-- Location: LCCOMB_X15_Y20_N16
\debouncer_right|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~7_combout\ = (((!\debouncer_right|counter\(15)) # (!\debouncer_right|counter\(16))) # (!\debouncer_right|counter\(18))) # (!\debouncer_right|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(17),
	datab => \debouncer_right|counter\(18),
	datac => \debouncer_right|counter\(16),
	datad => \debouncer_right|counter\(15),
	combout => \debouncer_right|LessThan0~7_combout\);

-- Location: LCCOMB_X15_Y20_N2
\debouncer_right|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~8_combout\ = (\debouncer_right|counter\(31)) # ((\debouncer_right|LessThan0~3_combout\ & ((\debouncer_right|LessThan0~6_combout\) # (\debouncer_right|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|LessThan0~6_combout\,
	datab => \debouncer_right|counter\(31),
	datac => \debouncer_right|LessThan0~3_combout\,
	datad => \debouncer_right|LessThan0~7_combout\,
	combout => \debouncer_right|LessThan0~8_combout\);

-- Location: LCCOMB_X15_Y20_N24
\debouncer_right|debounced_signal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|debounced_signal~0_combout\ = (\debouncer_right|LessThan0~8_combout\ & (((\debouncer_right|debounced_signal~q\)))) # (!\debouncer_right|LessThan0~8_combout\ & ((\debouncer_right|debouncing~q\ & (!\btn_right~input_o\)) # 
-- (!\debouncer_right|debouncing~q\ & ((\debouncer_right|debounced_signal~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_right~input_o\,
	datab => \debouncer_right|LessThan0~8_combout\,
	datac => \debouncer_right|debounced_signal~q\,
	datad => \debouncer_right|debouncing~q\,
	combout => \debouncer_right|debounced_signal~0_combout\);

-- Location: FF_X15_Y20_N25
\debouncer_right|debounced_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_right|debounced_signal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|debounced_signal~q\);

-- Location: LCCOMB_X26_Y20_N10
\car_control_inst|x_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[1]~9_combout\ = \car_control_inst|x_pos\(1) $ (VCC)
-- \car_control_inst|x_pos[1]~10\ = CARRY(\car_control_inst|x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(1),
	datad => VCC,
	combout => \car_control_inst|x_pos[1]~9_combout\,
	cout => \car_control_inst|x_pos[1]~10\);

-- Location: LCCOMB_X40_Y25_N0
\debouncer_left|counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[0]~32_combout\ = \debouncer_left|counter\(0) $ (VCC)
-- \debouncer_left|counter[0]~33\ = CARRY(\debouncer_left|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(0),
	datad => VCC,
	combout => \debouncer_left|counter[0]~32_combout\,
	cout => \debouncer_left|counter[0]~33\);

-- Location: IOIBUF_X0_Y23_N1
\btn_left~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_left,
	o => \btn_left~input_o\);

-- Location: LCCOMB_X39_Y24_N12
\debouncer_left|debouncing~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|debouncing~0_combout\ = (\debouncer_left|LessThan0~8_combout\ & (\btn_left~input_o\ $ (((!\debouncer_left|debounced_signal~q\))))) # (!\debouncer_left|LessThan0~8_combout\ & (!\debouncer_left|debouncing~q\ & (\btn_left~input_o\ $ 
-- (!\debouncer_left|debounced_signal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~8_combout\,
	datab => \btn_left~input_o\,
	datac => \debouncer_left|debouncing~q\,
	datad => \debouncer_left|debounced_signal~q\,
	combout => \debouncer_left|debouncing~0_combout\);

-- Location: FF_X39_Y24_N13
\debouncer_left|debouncing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|debouncing~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|debouncing~q\);

-- Location: LCCOMB_X39_Y24_N14
\debouncer_left|counter[17]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[17]~96_combout\ = (\btn_left~input_o\ $ (\debouncer_left|debounced_signal~q\)) # (!\debouncer_left|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|debouncing~q\,
	datab => \btn_left~input_o\,
	datad => \debouncer_left|debounced_signal~q\,
	combout => \debouncer_left|counter[17]~96_combout\);

-- Location: LCCOMB_X39_Y24_N0
\debouncer_left|counter[17]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[17]~97_combout\ = ((\debouncer_left|LessThan0~8_combout\) # (\btn_left~input_o\ $ (\debouncer_left|debounced_signal~q\))) # (!\debouncer_left|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|debouncing~q\,
	datab => \btn_left~input_o\,
	datac => \debouncer_left|LessThan0~8_combout\,
	datad => \debouncer_left|debounced_signal~q\,
	combout => \debouncer_left|counter[17]~97_combout\);

-- Location: FF_X40_Y25_N1
\debouncer_left|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[0]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(0));

-- Location: LCCOMB_X40_Y25_N2
\debouncer_left|counter[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[1]~34_combout\ = (\debouncer_left|counter\(1) & (!\debouncer_left|counter[0]~33\)) # (!\debouncer_left|counter\(1) & ((\debouncer_left|counter[0]~33\) # (GND)))
-- \debouncer_left|counter[1]~35\ = CARRY((!\debouncer_left|counter[0]~33\) # (!\debouncer_left|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(1),
	datad => VCC,
	cin => \debouncer_left|counter[0]~33\,
	combout => \debouncer_left|counter[1]~34_combout\,
	cout => \debouncer_left|counter[1]~35\);

-- Location: FF_X40_Y25_N3
\debouncer_left|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[1]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(1));

-- Location: LCCOMB_X40_Y25_N4
\debouncer_left|counter[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[2]~36_combout\ = (\debouncer_left|counter\(2) & (\debouncer_left|counter[1]~35\ $ (GND))) # (!\debouncer_left|counter\(2) & (!\debouncer_left|counter[1]~35\ & VCC))
-- \debouncer_left|counter[2]~37\ = CARRY((\debouncer_left|counter\(2) & !\debouncer_left|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(2),
	datad => VCC,
	cin => \debouncer_left|counter[1]~35\,
	combout => \debouncer_left|counter[2]~36_combout\,
	cout => \debouncer_left|counter[2]~37\);

-- Location: FF_X40_Y25_N5
\debouncer_left|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[2]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(2));

-- Location: LCCOMB_X40_Y25_N6
\debouncer_left|counter[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[3]~38_combout\ = (\debouncer_left|counter\(3) & (!\debouncer_left|counter[2]~37\)) # (!\debouncer_left|counter\(3) & ((\debouncer_left|counter[2]~37\) # (GND)))
-- \debouncer_left|counter[3]~39\ = CARRY((!\debouncer_left|counter[2]~37\) # (!\debouncer_left|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(3),
	datad => VCC,
	cin => \debouncer_left|counter[2]~37\,
	combout => \debouncer_left|counter[3]~38_combout\,
	cout => \debouncer_left|counter[3]~39\);

-- Location: FF_X40_Y25_N7
\debouncer_left|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[3]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(3));

-- Location: LCCOMB_X40_Y25_N8
\debouncer_left|counter[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[4]~40_combout\ = (\debouncer_left|counter\(4) & (\debouncer_left|counter[3]~39\ $ (GND))) # (!\debouncer_left|counter\(4) & (!\debouncer_left|counter[3]~39\ & VCC))
-- \debouncer_left|counter[4]~41\ = CARRY((\debouncer_left|counter\(4) & !\debouncer_left|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(4),
	datad => VCC,
	cin => \debouncer_left|counter[3]~39\,
	combout => \debouncer_left|counter[4]~40_combout\,
	cout => \debouncer_left|counter[4]~41\);

-- Location: FF_X40_Y25_N9
\debouncer_left|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[4]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(4));

-- Location: LCCOMB_X40_Y25_N10
\debouncer_left|counter[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[5]~42_combout\ = (\debouncer_left|counter\(5) & (!\debouncer_left|counter[4]~41\)) # (!\debouncer_left|counter\(5) & ((\debouncer_left|counter[4]~41\) # (GND)))
-- \debouncer_left|counter[5]~43\ = CARRY((!\debouncer_left|counter[4]~41\) # (!\debouncer_left|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(5),
	datad => VCC,
	cin => \debouncer_left|counter[4]~41\,
	combout => \debouncer_left|counter[5]~42_combout\,
	cout => \debouncer_left|counter[5]~43\);

-- Location: FF_X40_Y25_N11
\debouncer_left|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[5]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(5));

-- Location: LCCOMB_X40_Y25_N12
\debouncer_left|counter[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[6]~44_combout\ = (\debouncer_left|counter\(6) & (\debouncer_left|counter[5]~43\ $ (GND))) # (!\debouncer_left|counter\(6) & (!\debouncer_left|counter[5]~43\ & VCC))
-- \debouncer_left|counter[6]~45\ = CARRY((\debouncer_left|counter\(6) & !\debouncer_left|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(6),
	datad => VCC,
	cin => \debouncer_left|counter[5]~43\,
	combout => \debouncer_left|counter[6]~44_combout\,
	cout => \debouncer_left|counter[6]~45\);

-- Location: FF_X40_Y25_N13
\debouncer_left|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[6]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(6));

-- Location: LCCOMB_X40_Y25_N14
\debouncer_left|counter[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[7]~46_combout\ = (\debouncer_left|counter\(7) & (!\debouncer_left|counter[6]~45\)) # (!\debouncer_left|counter\(7) & ((\debouncer_left|counter[6]~45\) # (GND)))
-- \debouncer_left|counter[7]~47\ = CARRY((!\debouncer_left|counter[6]~45\) # (!\debouncer_left|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(7),
	datad => VCC,
	cin => \debouncer_left|counter[6]~45\,
	combout => \debouncer_left|counter[7]~46_combout\,
	cout => \debouncer_left|counter[7]~47\);

-- Location: FF_X40_Y25_N15
\debouncer_left|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[7]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(7));

-- Location: LCCOMB_X40_Y25_N16
\debouncer_left|counter[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[8]~48_combout\ = (\debouncer_left|counter\(8) & (\debouncer_left|counter[7]~47\ $ (GND))) # (!\debouncer_left|counter\(8) & (!\debouncer_left|counter[7]~47\ & VCC))
-- \debouncer_left|counter[8]~49\ = CARRY((\debouncer_left|counter\(8) & !\debouncer_left|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(8),
	datad => VCC,
	cin => \debouncer_left|counter[7]~47\,
	combout => \debouncer_left|counter[8]~48_combout\,
	cout => \debouncer_left|counter[8]~49\);

-- Location: FF_X40_Y25_N17
\debouncer_left|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[8]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(8));

-- Location: LCCOMB_X39_Y24_N10
\debouncer_left|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~4_combout\ = ((!\debouncer_left|counter\(7) & (!\debouncer_left|counter\(6) & !\debouncer_left|counter\(5)))) # (!\debouncer_left|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(8),
	datab => \debouncer_left|counter\(7),
	datac => \debouncer_left|counter\(6),
	datad => \debouncer_left|counter\(5),
	combout => \debouncer_left|LessThan0~4_combout\);

-- Location: LCCOMB_X40_Y25_N18
\debouncer_left|counter[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[9]~50_combout\ = (\debouncer_left|counter\(9) & (!\debouncer_left|counter[8]~49\)) # (!\debouncer_left|counter\(9) & ((\debouncer_left|counter[8]~49\) # (GND)))
-- \debouncer_left|counter[9]~51\ = CARRY((!\debouncer_left|counter[8]~49\) # (!\debouncer_left|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(9),
	datad => VCC,
	cin => \debouncer_left|counter[8]~49\,
	combout => \debouncer_left|counter[9]~50_combout\,
	cout => \debouncer_left|counter[9]~51\);

-- Location: FF_X40_Y25_N19
\debouncer_left|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[9]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(9));

-- Location: LCCOMB_X40_Y25_N20
\debouncer_left|counter[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[10]~52_combout\ = (\debouncer_left|counter\(10) & (\debouncer_left|counter[9]~51\ $ (GND))) # (!\debouncer_left|counter\(10) & (!\debouncer_left|counter[9]~51\ & VCC))
-- \debouncer_left|counter[10]~53\ = CARRY((\debouncer_left|counter\(10) & !\debouncer_left|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(10),
	datad => VCC,
	cin => \debouncer_left|counter[9]~51\,
	combout => \debouncer_left|counter[10]~52_combout\,
	cout => \debouncer_left|counter[10]~53\);

-- Location: FF_X40_Y25_N21
\debouncer_left|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[10]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(10));

-- Location: LCCOMB_X40_Y25_N22
\debouncer_left|counter[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[11]~54_combout\ = (\debouncer_left|counter\(11) & (!\debouncer_left|counter[10]~53\)) # (!\debouncer_left|counter\(11) & ((\debouncer_left|counter[10]~53\) # (GND)))
-- \debouncer_left|counter[11]~55\ = CARRY((!\debouncer_left|counter[10]~53\) # (!\debouncer_left|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(11),
	datad => VCC,
	cin => \debouncer_left|counter[10]~53\,
	combout => \debouncer_left|counter[11]~54_combout\,
	cout => \debouncer_left|counter[11]~55\);

-- Location: FF_X40_Y25_N23
\debouncer_left|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[11]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(11));

-- Location: LCCOMB_X40_Y25_N24
\debouncer_left|counter[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[12]~56_combout\ = (\debouncer_left|counter\(12) & (\debouncer_left|counter[11]~55\ $ (GND))) # (!\debouncer_left|counter\(12) & (!\debouncer_left|counter[11]~55\ & VCC))
-- \debouncer_left|counter[12]~57\ = CARRY((\debouncer_left|counter\(12) & !\debouncer_left|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(12),
	datad => VCC,
	cin => \debouncer_left|counter[11]~55\,
	combout => \debouncer_left|counter[12]~56_combout\,
	cout => \debouncer_left|counter[12]~57\);

-- Location: FF_X40_Y25_N25
\debouncer_left|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[12]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(12));

-- Location: LCCOMB_X39_Y24_N28
\debouncer_left|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~5_combout\ = (!\debouncer_left|counter\(11) & (!\debouncer_left|counter\(10) & (!\debouncer_left|counter\(12) & !\debouncer_left|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(11),
	datab => \debouncer_left|counter\(10),
	datac => \debouncer_left|counter\(12),
	datad => \debouncer_left|counter\(9),
	combout => \debouncer_left|LessThan0~5_combout\);

-- Location: LCCOMB_X40_Y25_N26
\debouncer_left|counter[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[13]~58_combout\ = (\debouncer_left|counter\(13) & (!\debouncer_left|counter[12]~57\)) # (!\debouncer_left|counter\(13) & ((\debouncer_left|counter[12]~57\) # (GND)))
-- \debouncer_left|counter[13]~59\ = CARRY((!\debouncer_left|counter[12]~57\) # (!\debouncer_left|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(13),
	datad => VCC,
	cin => \debouncer_left|counter[12]~57\,
	combout => \debouncer_left|counter[13]~58_combout\,
	cout => \debouncer_left|counter[13]~59\);

-- Location: FF_X40_Y25_N27
\debouncer_left|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[13]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(13));

-- Location: LCCOMB_X40_Y25_N28
\debouncer_left|counter[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[14]~60_combout\ = (\debouncer_left|counter\(14) & (\debouncer_left|counter[13]~59\ $ (GND))) # (!\debouncer_left|counter\(14) & (!\debouncer_left|counter[13]~59\ & VCC))
-- \debouncer_left|counter[14]~61\ = CARRY((\debouncer_left|counter\(14) & !\debouncer_left|counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(14),
	datad => VCC,
	cin => \debouncer_left|counter[13]~59\,
	combout => \debouncer_left|counter[14]~60_combout\,
	cout => \debouncer_left|counter[14]~61\);

-- Location: FF_X40_Y25_N29
\debouncer_left|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[14]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(14));

-- Location: LCCOMB_X39_Y24_N22
\debouncer_left|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~6_combout\ = (!\debouncer_left|counter\(14) & (((\debouncer_left|LessThan0~4_combout\ & \debouncer_left|LessThan0~5_combout\)) # (!\debouncer_left|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~4_combout\,
	datab => \debouncer_left|LessThan0~5_combout\,
	datac => \debouncer_left|counter\(14),
	datad => \debouncer_left|counter\(13),
	combout => \debouncer_left|LessThan0~6_combout\);

-- Location: LCCOMB_X40_Y25_N30
\debouncer_left|counter[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[15]~62_combout\ = (\debouncer_left|counter\(15) & (!\debouncer_left|counter[14]~61\)) # (!\debouncer_left|counter\(15) & ((\debouncer_left|counter[14]~61\) # (GND)))
-- \debouncer_left|counter[15]~63\ = CARRY((!\debouncer_left|counter[14]~61\) # (!\debouncer_left|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(15),
	datad => VCC,
	cin => \debouncer_left|counter[14]~61\,
	combout => \debouncer_left|counter[15]~62_combout\,
	cout => \debouncer_left|counter[15]~63\);

-- Location: FF_X40_Y25_N31
\debouncer_left|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[15]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(15));

-- Location: LCCOMB_X40_Y24_N0
\debouncer_left|counter[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[16]~64_combout\ = (\debouncer_left|counter\(16) & (\debouncer_left|counter[15]~63\ $ (GND))) # (!\debouncer_left|counter\(16) & (!\debouncer_left|counter[15]~63\ & VCC))
-- \debouncer_left|counter[16]~65\ = CARRY((\debouncer_left|counter\(16) & !\debouncer_left|counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(16),
	datad => VCC,
	cin => \debouncer_left|counter[15]~63\,
	combout => \debouncer_left|counter[16]~64_combout\,
	cout => \debouncer_left|counter[16]~65\);

-- Location: FF_X40_Y24_N1
\debouncer_left|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[16]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(16));

-- Location: LCCOMB_X40_Y24_N2
\debouncer_left|counter[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[17]~66_combout\ = (\debouncer_left|counter\(17) & (!\debouncer_left|counter[16]~65\)) # (!\debouncer_left|counter\(17) & ((\debouncer_left|counter[16]~65\) # (GND)))
-- \debouncer_left|counter[17]~67\ = CARRY((!\debouncer_left|counter[16]~65\) # (!\debouncer_left|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(17),
	datad => VCC,
	cin => \debouncer_left|counter[16]~65\,
	combout => \debouncer_left|counter[17]~66_combout\,
	cout => \debouncer_left|counter[17]~67\);

-- Location: FF_X40_Y24_N3
\debouncer_left|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[17]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(17));

-- Location: LCCOMB_X40_Y24_N4
\debouncer_left|counter[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[18]~68_combout\ = (\debouncer_left|counter\(18) & (\debouncer_left|counter[17]~67\ $ (GND))) # (!\debouncer_left|counter\(18) & (!\debouncer_left|counter[17]~67\ & VCC))
-- \debouncer_left|counter[18]~69\ = CARRY((\debouncer_left|counter\(18) & !\debouncer_left|counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(18),
	datad => VCC,
	cin => \debouncer_left|counter[17]~67\,
	combout => \debouncer_left|counter[18]~68_combout\,
	cout => \debouncer_left|counter[18]~69\);

-- Location: FF_X40_Y24_N5
\debouncer_left|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[18]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(18));

-- Location: LCCOMB_X40_Y24_N6
\debouncer_left|counter[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[19]~70_combout\ = (\debouncer_left|counter\(19) & (!\debouncer_left|counter[18]~69\)) # (!\debouncer_left|counter\(19) & ((\debouncer_left|counter[18]~69\) # (GND)))
-- \debouncer_left|counter[19]~71\ = CARRY((!\debouncer_left|counter[18]~69\) # (!\debouncer_left|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(19),
	datad => VCC,
	cin => \debouncer_left|counter[18]~69\,
	combout => \debouncer_left|counter[19]~70_combout\,
	cout => \debouncer_left|counter[19]~71\);

-- Location: FF_X40_Y24_N7
\debouncer_left|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[19]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(19));

-- Location: LCCOMB_X40_Y24_N8
\debouncer_left|counter[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[20]~72_combout\ = (\debouncer_left|counter\(20) & (\debouncer_left|counter[19]~71\ $ (GND))) # (!\debouncer_left|counter\(20) & (!\debouncer_left|counter[19]~71\ & VCC))
-- \debouncer_left|counter[20]~73\ = CARRY((\debouncer_left|counter\(20) & !\debouncer_left|counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(20),
	datad => VCC,
	cin => \debouncer_left|counter[19]~71\,
	combout => \debouncer_left|counter[20]~72_combout\,
	cout => \debouncer_left|counter[20]~73\);

-- Location: FF_X40_Y24_N9
\debouncer_left|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[20]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(20));

-- Location: LCCOMB_X40_Y24_N10
\debouncer_left|counter[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[21]~74_combout\ = (\debouncer_left|counter\(21) & (!\debouncer_left|counter[20]~73\)) # (!\debouncer_left|counter\(21) & ((\debouncer_left|counter[20]~73\) # (GND)))
-- \debouncer_left|counter[21]~75\ = CARRY((!\debouncer_left|counter[20]~73\) # (!\debouncer_left|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(21),
	datad => VCC,
	cin => \debouncer_left|counter[20]~73\,
	combout => \debouncer_left|counter[21]~74_combout\,
	cout => \debouncer_left|counter[21]~75\);

-- Location: FF_X40_Y24_N11
\debouncer_left|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[21]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(21));

-- Location: LCCOMB_X40_Y24_N12
\debouncer_left|counter[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[22]~76_combout\ = (\debouncer_left|counter\(22) & (\debouncer_left|counter[21]~75\ $ (GND))) # (!\debouncer_left|counter\(22) & (!\debouncer_left|counter[21]~75\ & VCC))
-- \debouncer_left|counter[22]~77\ = CARRY((\debouncer_left|counter\(22) & !\debouncer_left|counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(22),
	datad => VCC,
	cin => \debouncer_left|counter[21]~75\,
	combout => \debouncer_left|counter[22]~76_combout\,
	cout => \debouncer_left|counter[22]~77\);

-- Location: FF_X40_Y24_N13
\debouncer_left|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[22]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(22));

-- Location: LCCOMB_X40_Y24_N14
\debouncer_left|counter[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[23]~78_combout\ = (\debouncer_left|counter\(23) & (!\debouncer_left|counter[22]~77\)) # (!\debouncer_left|counter\(23) & ((\debouncer_left|counter[22]~77\) # (GND)))
-- \debouncer_left|counter[23]~79\ = CARRY((!\debouncer_left|counter[22]~77\) # (!\debouncer_left|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(23),
	datad => VCC,
	cin => \debouncer_left|counter[22]~77\,
	combout => \debouncer_left|counter[23]~78_combout\,
	cout => \debouncer_left|counter[23]~79\);

-- Location: FF_X40_Y24_N15
\debouncer_left|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[23]~78_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(23));

-- Location: LCCOMB_X40_Y24_N16
\debouncer_left|counter[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[24]~80_combout\ = (\debouncer_left|counter\(24) & (\debouncer_left|counter[23]~79\ $ (GND))) # (!\debouncer_left|counter\(24) & (!\debouncer_left|counter[23]~79\ & VCC))
-- \debouncer_left|counter[24]~81\ = CARRY((\debouncer_left|counter\(24) & !\debouncer_left|counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(24),
	datad => VCC,
	cin => \debouncer_left|counter[23]~79\,
	combout => \debouncer_left|counter[24]~80_combout\,
	cout => \debouncer_left|counter[24]~81\);

-- Location: FF_X40_Y24_N17
\debouncer_left|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[24]~80_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(24));

-- Location: LCCOMB_X40_Y24_N18
\debouncer_left|counter[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[25]~82_combout\ = (\debouncer_left|counter\(25) & (!\debouncer_left|counter[24]~81\)) # (!\debouncer_left|counter\(25) & ((\debouncer_left|counter[24]~81\) # (GND)))
-- \debouncer_left|counter[25]~83\ = CARRY((!\debouncer_left|counter[24]~81\) # (!\debouncer_left|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(25),
	datad => VCC,
	cin => \debouncer_left|counter[24]~81\,
	combout => \debouncer_left|counter[25]~82_combout\,
	cout => \debouncer_left|counter[25]~83\);

-- Location: FF_X40_Y24_N19
\debouncer_left|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[25]~82_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(25));

-- Location: LCCOMB_X40_Y24_N20
\debouncer_left|counter[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[26]~84_combout\ = (\debouncer_left|counter\(26) & (\debouncer_left|counter[25]~83\ $ (GND))) # (!\debouncer_left|counter\(26) & (!\debouncer_left|counter[25]~83\ & VCC))
-- \debouncer_left|counter[26]~85\ = CARRY((\debouncer_left|counter\(26) & !\debouncer_left|counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(26),
	datad => VCC,
	cin => \debouncer_left|counter[25]~83\,
	combout => \debouncer_left|counter[26]~84_combout\,
	cout => \debouncer_left|counter[26]~85\);

-- Location: FF_X40_Y24_N21
\debouncer_left|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[26]~84_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(26));

-- Location: LCCOMB_X40_Y24_N22
\debouncer_left|counter[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[27]~86_combout\ = (\debouncer_left|counter\(27) & (!\debouncer_left|counter[26]~85\)) # (!\debouncer_left|counter\(27) & ((\debouncer_left|counter[26]~85\) # (GND)))
-- \debouncer_left|counter[27]~87\ = CARRY((!\debouncer_left|counter[26]~85\) # (!\debouncer_left|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(27),
	datad => VCC,
	cin => \debouncer_left|counter[26]~85\,
	combout => \debouncer_left|counter[27]~86_combout\,
	cout => \debouncer_left|counter[27]~87\);

-- Location: FF_X40_Y24_N23
\debouncer_left|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[27]~86_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(27));

-- Location: LCCOMB_X40_Y24_N24
\debouncer_left|counter[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[28]~88_combout\ = (\debouncer_left|counter\(28) & (\debouncer_left|counter[27]~87\ $ (GND))) # (!\debouncer_left|counter\(28) & (!\debouncer_left|counter[27]~87\ & VCC))
-- \debouncer_left|counter[28]~89\ = CARRY((\debouncer_left|counter\(28) & !\debouncer_left|counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(28),
	datad => VCC,
	cin => \debouncer_left|counter[27]~87\,
	combout => \debouncer_left|counter[28]~88_combout\,
	cout => \debouncer_left|counter[28]~89\);

-- Location: FF_X40_Y24_N25
\debouncer_left|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[28]~88_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(28));

-- Location: LCCOMB_X40_Y24_N26
\debouncer_left|counter[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[29]~90_combout\ = (\debouncer_left|counter\(29) & (!\debouncer_left|counter[28]~89\)) # (!\debouncer_left|counter\(29) & ((\debouncer_left|counter[28]~89\) # (GND)))
-- \debouncer_left|counter[29]~91\ = CARRY((!\debouncer_left|counter[28]~89\) # (!\debouncer_left|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(29),
	datad => VCC,
	cin => \debouncer_left|counter[28]~89\,
	combout => \debouncer_left|counter[29]~90_combout\,
	cout => \debouncer_left|counter[29]~91\);

-- Location: FF_X40_Y24_N27
\debouncer_left|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[29]~90_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(29));

-- Location: LCCOMB_X40_Y24_N28
\debouncer_left|counter[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[30]~92_combout\ = (\debouncer_left|counter\(30) & (\debouncer_left|counter[29]~91\ $ (GND))) # (!\debouncer_left|counter\(30) & (!\debouncer_left|counter[29]~91\ & VCC))
-- \debouncer_left|counter[30]~93\ = CARRY((\debouncer_left|counter\(30) & !\debouncer_left|counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_left|counter\(30),
	datad => VCC,
	cin => \debouncer_left|counter[29]~91\,
	combout => \debouncer_left|counter[30]~92_combout\,
	cout => \debouncer_left|counter[30]~93\);

-- Location: FF_X40_Y24_N29
\debouncer_left|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[30]~92_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(30));

-- Location: LCCOMB_X39_Y24_N6
\debouncer_left|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~2_combout\ = (!\debouncer_left|counter\(30) & (!\debouncer_left|counter\(28) & (!\debouncer_left|counter\(29) & !\debouncer_left|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(30),
	datab => \debouncer_left|counter\(28),
	datac => \debouncer_left|counter\(29),
	datad => \debouncer_left|counter\(27),
	combout => \debouncer_left|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y24_N20
\debouncer_left|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~1_combout\ = (!\debouncer_left|counter\(26) & (!\debouncer_left|counter\(25) & (!\debouncer_left|counter\(23) & !\debouncer_left|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(26),
	datab => \debouncer_left|counter\(25),
	datac => \debouncer_left|counter\(23),
	datad => \debouncer_left|counter\(24),
	combout => \debouncer_left|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y24_N2
\debouncer_left|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~0_combout\ = (!\debouncer_left|counter\(22) & (!\debouncer_left|counter\(21) & (!\debouncer_left|counter\(20) & !\debouncer_left|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(22),
	datab => \debouncer_left|counter\(21),
	datac => \debouncer_left|counter\(20),
	datad => \debouncer_left|counter\(19),
	combout => \debouncer_left|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y24_N8
\debouncer_left|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~3_combout\ = (\debouncer_left|LessThan0~2_combout\ & (\debouncer_left|LessThan0~1_combout\ & \debouncer_left|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~2_combout\,
	datab => \debouncer_left|LessThan0~1_combout\,
	datad => \debouncer_left|LessThan0~0_combout\,
	combout => \debouncer_left|LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y24_N30
\debouncer_left|counter[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[31]~94_combout\ = \debouncer_left|counter\(31) $ (\debouncer_left|counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(31),
	cin => \debouncer_left|counter[30]~93\,
	combout => \debouncer_left|counter[31]~94_combout\);

-- Location: FF_X40_Y24_N31
\debouncer_left|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|counter[31]~94_combout\,
	clrn => \reset~input_o\,
	sclr => \debouncer_left|counter[17]~96_combout\,
	ena => \debouncer_left|counter[17]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(31));

-- Location: LCCOMB_X39_Y24_N16
\debouncer_left|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~7_combout\ = (((!\debouncer_left|counter\(18)) # (!\debouncer_left|counter\(15))) # (!\debouncer_left|counter\(16))) # (!\debouncer_left|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(17),
	datab => \debouncer_left|counter\(16),
	datac => \debouncer_left|counter\(15),
	datad => \debouncer_left|counter\(18),
	combout => \debouncer_left|LessThan0~7_combout\);

-- Location: LCCOMB_X39_Y24_N26
\debouncer_left|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~8_combout\ = (\debouncer_left|counter\(31)) # ((\debouncer_left|LessThan0~3_combout\ & ((\debouncer_left|LessThan0~6_combout\) # (\debouncer_left|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~6_combout\,
	datab => \debouncer_left|LessThan0~3_combout\,
	datac => \debouncer_left|counter\(31),
	datad => \debouncer_left|LessThan0~7_combout\,
	combout => \debouncer_left|LessThan0~8_combout\);

-- Location: LCCOMB_X39_Y24_N24
\debouncer_left|debounced_signal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|debounced_signal~0_combout\ = (\debouncer_left|LessThan0~8_combout\ & (((\debouncer_left|debounced_signal~q\)))) # (!\debouncer_left|LessThan0~8_combout\ & ((\debouncer_left|debouncing~q\ & (!\btn_left~input_o\)) # 
-- (!\debouncer_left|debouncing~q\ & ((\debouncer_left|debounced_signal~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~8_combout\,
	datab => \btn_left~input_o\,
	datac => \debouncer_left|debounced_signal~q\,
	datad => \debouncer_left|debouncing~q\,
	combout => \debouncer_left|debounced_signal~0_combout\);

-- Location: FF_X39_Y24_N25
\debouncer_left|debounced_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \debouncer_left|debounced_signal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|debounced_signal~q\);

-- Location: LCCOMB_X26_Y20_N12
\car_control_inst|x_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[2]~14_combout\ = (\car_control_inst|x_pos\(2) & ((\car_control_inst|process_0~2_combout\ & (!\car_control_inst|x_pos[1]~10\)) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos[1]~10\ & VCC)))) # 
-- (!\car_control_inst|x_pos\(2) & ((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos[1]~10\) # (GND))) # (!\car_control_inst|process_0~2_combout\ & (!\car_control_inst|x_pos[1]~10\))))
-- \car_control_inst|x_pos[2]~15\ = CARRY((\car_control_inst|x_pos\(2) & (\car_control_inst|process_0~2_combout\ & !\car_control_inst|x_pos[1]~10\)) # (!\car_control_inst|x_pos\(2) & ((\car_control_inst|process_0~2_combout\) # 
-- (!\car_control_inst|x_pos[1]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(2),
	datab => \car_control_inst|process_0~2_combout\,
	datad => VCC,
	cin => \car_control_inst|x_pos[1]~10\,
	combout => \car_control_inst|x_pos[2]~14_combout\,
	cout => \car_control_inst|x_pos[2]~15\);

-- Location: LCCOMB_X26_Y20_N14
\car_control_inst|x_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[3]~16_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(3) $ (!\car_control_inst|x_pos[2]~15\)))) # (GND)
-- \car_control_inst|x_pos[3]~17\ = CARRY((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(3)) # (!\car_control_inst|x_pos[2]~15\))) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(3) & 
-- !\car_control_inst|x_pos[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(3),
	datad => VCC,
	cin => \car_control_inst|x_pos[2]~15\,
	combout => \car_control_inst|x_pos[3]~16_combout\,
	cout => \car_control_inst|x_pos[3]~17\);

-- Location: FF_X26_Y20_N15
\car_control_inst|x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[3]~16_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(3));

-- Location: LCCOMB_X26_Y20_N16
\car_control_inst|x_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[4]~18_combout\ = (\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(4) & (!\car_control_inst|x_pos[3]~17\)) # (!\car_control_inst|x_pos\(4) & ((\car_control_inst|x_pos[3]~17\) # (GND))))) # 
-- (!\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(4) & (\car_control_inst|x_pos[3]~17\ & VCC)) # (!\car_control_inst|x_pos\(4) & (!\car_control_inst|x_pos[3]~17\))))
-- \car_control_inst|x_pos[4]~19\ = CARRY((\car_control_inst|process_0~2_combout\ & ((!\car_control_inst|x_pos[3]~17\) # (!\car_control_inst|x_pos\(4)))) # (!\car_control_inst|process_0~2_combout\ & (!\car_control_inst|x_pos\(4) & 
-- !\car_control_inst|x_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(4),
	datad => VCC,
	cin => \car_control_inst|x_pos[3]~17\,
	combout => \car_control_inst|x_pos[4]~18_combout\,
	cout => \car_control_inst|x_pos[4]~19\);

-- Location: FF_X26_Y20_N17
\car_control_inst|x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[4]~18_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(4));

-- Location: LCCOMB_X26_Y20_N18
\car_control_inst|x_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[5]~20_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(5) $ (\car_control_inst|x_pos[4]~19\)))) # (GND)
-- \car_control_inst|x_pos[5]~21\ = CARRY((\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(5) & !\car_control_inst|x_pos[4]~19\)) # (!\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(5)) # 
-- (!\car_control_inst|x_pos[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(5),
	datad => VCC,
	cin => \car_control_inst|x_pos[4]~19\,
	combout => \car_control_inst|x_pos[5]~20_combout\,
	cout => \car_control_inst|x_pos[5]~21\);

-- Location: FF_X26_Y20_N19
\car_control_inst|x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[5]~20_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(5));

-- Location: LCCOMB_X26_Y20_N20
\car_control_inst|x_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[6]~22_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(6) $ (!\car_control_inst|x_pos[5]~21\)))) # (GND)
-- \car_control_inst|x_pos[6]~23\ = CARRY((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(6)) # (!\car_control_inst|x_pos[5]~21\))) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(6) & 
-- !\car_control_inst|x_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(6),
	datad => VCC,
	cin => \car_control_inst|x_pos[5]~21\,
	combout => \car_control_inst|x_pos[6]~22_combout\,
	cout => \car_control_inst|x_pos[6]~23\);

-- Location: FF_X26_Y20_N21
\car_control_inst|x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[6]~22_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(6));

-- Location: LCCOMB_X26_Y20_N2
\car_control_inst|x_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[2]~11_combout\ = (!\car_control_inst|x_pos\(5) & (!\car_control_inst|x_pos\(4) & (!\car_control_inst|x_pos\(9) & \car_control_inst|x_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(5),
	datab => \car_control_inst|x_pos\(4),
	datac => \car_control_inst|x_pos\(9),
	datad => \car_control_inst|x_pos\(6),
	combout => \car_control_inst|x_pos[2]~11_combout\);

-- Location: LCCOMB_X26_Y20_N22
\car_control_inst|x_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[7]~24_combout\ = ((\car_control_inst|x_pos\(7) $ (\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos[6]~23\)))) # (GND)
-- \car_control_inst|x_pos[7]~25\ = CARRY((\car_control_inst|x_pos\(7) & ((!\car_control_inst|x_pos[6]~23\) # (!\car_control_inst|process_0~2_combout\))) # (!\car_control_inst|x_pos\(7) & (!\car_control_inst|process_0~2_combout\ & 
-- !\car_control_inst|x_pos[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(7),
	datab => \car_control_inst|process_0~2_combout\,
	datad => VCC,
	cin => \car_control_inst|x_pos[6]~23\,
	combout => \car_control_inst|x_pos[7]~24_combout\,
	cout => \car_control_inst|x_pos[7]~25\);

-- Location: FF_X26_Y20_N23
\car_control_inst|x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[7]~24_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(7));

-- Location: LCCOMB_X26_Y20_N24
\car_control_inst|x_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[8]~26_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(8) $ (!\car_control_inst|x_pos[7]~25\)))) # (GND)
-- \car_control_inst|x_pos[8]~27\ = CARRY((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(8)) # (!\car_control_inst|x_pos[7]~25\))) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(8) & 
-- !\car_control_inst|x_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(8),
	datad => VCC,
	cin => \car_control_inst|x_pos[7]~25\,
	combout => \car_control_inst|x_pos[8]~26_combout\,
	cout => \car_control_inst|x_pos[8]~27\);

-- Location: FF_X26_Y20_N25
\car_control_inst|x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[8]~26_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(8));

-- Location: LCCOMB_X26_Y20_N8
\car_control_inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|process_0~0_combout\ = (!\car_control_inst|x_pos\(7) & \car_control_inst|x_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \car_control_inst|x_pos\(7),
	datad => \car_control_inst|x_pos\(8),
	combout => \car_control_inst|process_0~0_combout\);

-- Location: LCCOMB_X26_Y20_N28
\car_control_inst|x_pos[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[2]~12_combout\ = (\car_control_inst|x_pos[2]~11_combout\ & (\car_control_inst|process_0~0_combout\ & ((!\car_control_inst|x_pos\(2)) # (!\car_control_inst|x_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(3),
	datab => \car_control_inst|x_pos[2]~11_combout\,
	datac => \car_control_inst|process_0~0_combout\,
	datad => \car_control_inst|x_pos\(2),
	combout => \car_control_inst|x_pos[2]~12_combout\);

-- Location: FF_X26_Y20_N31
\car_control_inst|left_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \debouncer_left|debounced_signal~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|left_prev~q\);

-- Location: LCCOMB_X26_Y20_N30
\car_control_inst|x_pos[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[2]~13_combout\ = (\car_control_inst|process_0~2_combout\) # ((\debouncer_left|debounced_signal~q\ & (!\car_control_inst|x_pos[2]~12_combout\ & !\car_control_inst|left_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|debounced_signal~q\,
	datab => \car_control_inst|x_pos[2]~12_combout\,
	datac => \car_control_inst|left_prev~q\,
	datad => \car_control_inst|process_0~2_combout\,
	combout => \car_control_inst|x_pos[2]~13_combout\);

-- Location: FF_X26_Y20_N11
\car_control_inst|x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[1]~9_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(1));

-- Location: FF_X26_Y20_N13
\car_control_inst|x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[2]~14_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(2));

-- Location: LCCOMB_X26_Y20_N0
\car_control_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|LessThan1~0_combout\ = ((!\car_control_inst|x_pos\(3) & ((!\car_control_inst|x_pos\(1)) # (!\car_control_inst|x_pos\(2))))) # (!\car_control_inst|x_pos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(2),
	datab => \car_control_inst|x_pos\(5),
	datac => \car_control_inst|x_pos\(3),
	datad => \car_control_inst|x_pos\(1),
	combout => \car_control_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
\car_control_inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|process_0~1_combout\ = (\car_control_inst|process_0~0_combout\ & ((\car_control_inst|LessThan1~0_combout\) # ((\car_control_inst|x_pos\(6)) # (!\car_control_inst|x_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|LessThan1~0_combout\,
	datab => \car_control_inst|x_pos\(4),
	datac => \car_control_inst|process_0~0_combout\,
	datad => \car_control_inst|x_pos\(6),
	combout => \car_control_inst|process_0~1_combout\);

-- Location: FF_X26_Y20_N7
\car_control_inst|right_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \debouncer_right|debounced_signal~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|right_prev~q\);

-- Location: LCCOMB_X26_Y20_N6
\car_control_inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|process_0~2_combout\ = (\debouncer_right|debounced_signal~q\ & (!\car_control_inst|right_prev~q\ & ((\car_control_inst|process_0~1_combout\) # (!\car_control_inst|x_pos\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|debounced_signal~q\,
	datab => \car_control_inst|process_0~1_combout\,
	datac => \car_control_inst|right_prev~q\,
	datad => \car_control_inst|x_pos\(9),
	combout => \car_control_inst|process_0~2_combout\);

-- Location: LCCOMB_X26_Y20_N26
\car_control_inst|x_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[9]~28_combout\ = \car_control_inst|x_pos\(9) $ (\car_control_inst|x_pos[8]~27\ $ (\car_control_inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(9),
	datad => \car_control_inst|process_0~2_combout\,
	cin => \car_control_inst|x_pos[8]~27\,
	combout => \car_control_inst|x_pos[9]~28_combout\);

-- Location: FF_X26_Y20_N27
\car_control_inst|x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[9]~28_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(9));

-- Location: LCCOMB_X24_Y19_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\car_control_inst|x_pos\(1) & (\car_control_inst|x_pos\(2) $ (VCC))) # (!\car_control_inst|x_pos\(1) & (\car_control_inst|x_pos\(2) & VCC))
-- \Add0~1\ = CARRY((\car_control_inst|x_pos\(1) & \car_control_inst|x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(1),
	datab => \car_control_inst|x_pos\(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X24_Y19_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\car_control_inst|x_pos\(3) & (!\Add0~1\)) # (!\car_control_inst|x_pos\(3) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\car_control_inst|x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X24_Y19_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\car_control_inst|x_pos\(4) & (\Add0~3\ $ (GND))) # (!\car_control_inst|x_pos\(4) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\car_control_inst|x_pos\(4) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X24_Y19_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\car_control_inst|x_pos\(5) & (!\Add0~5\)) # (!\car_control_inst|x_pos\(5) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\car_control_inst|x_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X24_Y19_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\car_control_inst|x_pos\(6) & (\Add0~7\ $ (GND))) # (!\car_control_inst|x_pos\(6) & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!\car_control_inst|x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y19_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\car_control_inst|x_pos\(7) & (!\Add0~9\)) # (!\car_control_inst|x_pos\(7) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\car_control_inst|x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y19_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\car_control_inst|x_pos\(8) & (!\Add0~11\ & VCC)) # (!\car_control_inst|x_pos\(8) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!\car_control_inst|x_pos\(8) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X24_Y19_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \car_control_inst|x_pos\(9) $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(9),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X23_Y19_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\hvsync_gen|local_hpos\(1) & !\car_control_inst|x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \car_control_inst|x_pos\(1),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y19_N2
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\hvsync_gen|local_hpos\(2) & ((!\LessThan1~1_cout\) # (!\Add0~0_combout\))) # (!\hvsync_gen|local_hpos\(2) & (!\Add0~0_combout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y19_N4
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\hvsync_gen|local_hpos\(3) & (\Add0~2_combout\ & !\LessThan1~3_cout\)) # (!\hvsync_gen|local_hpos\(3) & ((\Add0~2_combout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y19_N6
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\hvsync_gen|local_hpos\(4) & ((!\LessThan1~5_cout\) # (!\Add0~4_combout\))) # (!\hvsync_gen|local_hpos\(4) & (!\Add0~4_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y19_N8
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\hvsync_gen|local_hpos\(5) & (\Add0~6_combout\ & !\LessThan1~7_cout\)) # (!\hvsync_gen|local_hpos\(5) & ((\Add0~6_combout\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y19_N10
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\hvsync_gen|local_hpos\(6) & ((!\LessThan1~9_cout\) # (!\Add0~8_combout\))) # (!\hvsync_gen|local_hpos\(6) & (!\Add0~8_combout\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(6),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y19_N12
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\hvsync_gen|local_hpos\(7) & (\Add0~10_combout\ & !\LessThan1~11_cout\)) # (!\hvsync_gen|local_hpos\(7) & ((\Add0~10_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y19_N14
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\Add0~12_combout\ & (\hvsync_gen|local_hpos\(8) & !\LessThan1~13_cout\)) # (!\Add0~12_combout\ & ((\hvsync_gen|local_hpos\(8)) # (!\LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \hvsync_gen|local_hpos\(8),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X23_Y19_N16
\LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (\hvsync_gen|local_hpos\(9) & (!\LessThan1~15_cout\ & \Add0~14_combout\)) # (!\hvsync_gen|local_hpos\(9) & ((\Add0~14_combout\) # (!\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(9),
	datad => \Add0~14_combout\,
	cin => \LessThan1~15_cout\,
	combout => \LessThan1~16_combout\);

-- Location: LCCOMB_X24_Y21_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\hvsync_gen|local_hpos\(1) & \car_control_inst|x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \car_control_inst|x_pos\(1),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y21_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\hvsync_gen|local_hpos\(2) & ((!\LessThan0~1_cout\) # (!\car_control_inst|x_pos\(2)))) # (!\hvsync_gen|local_hpos\(2) & (!\car_control_inst|x_pos\(2) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \car_control_inst|x_pos\(2),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y21_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\car_control_inst|x_pos\(3) & ((!\LessThan0~3_cout\) # (!\hvsync_gen|local_hpos\(3)))) # (!\car_control_inst|x_pos\(3) & (!\hvsync_gen|local_hpos\(3) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(3),
	datab => \hvsync_gen|local_hpos\(3),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y21_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\hvsync_gen|local_hpos\(4) & ((!\LessThan0~5_cout\) # (!\car_control_inst|x_pos\(4)))) # (!\hvsync_gen|local_hpos\(4) & (!\car_control_inst|x_pos\(4) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \car_control_inst|x_pos\(4),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y21_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\car_control_inst|x_pos\(5) & ((!\LessThan0~7_cout\) # (!\hvsync_gen|local_hpos\(5)))) # (!\car_control_inst|x_pos\(5) & (!\hvsync_gen|local_hpos\(5) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(5),
	datab => \hvsync_gen|local_hpos\(5),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y21_N10
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\car_control_inst|x_pos\(6) & ((\hvsync_gen|local_hpos\(6)) # (!\LessThan0~9_cout\))) # (!\car_control_inst|x_pos\(6) & (\hvsync_gen|local_hpos\(6) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(6),
	datab => \hvsync_gen|local_hpos\(6),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y21_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\hvsync_gen|local_hpos\(7) & (\car_control_inst|x_pos\(7) & !\LessThan0~11_cout\)) # (!\hvsync_gen|local_hpos\(7) & ((\car_control_inst|x_pos\(7)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datab => \car_control_inst|x_pos\(7),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y21_N14
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\hvsync_gen|local_hpos\(8) & ((\car_control_inst|x_pos\(8)) # (!\LessThan0~13_cout\))) # (!\hvsync_gen|local_hpos\(8) & (\car_control_inst|x_pos\(8) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(8),
	datab => \car_control_inst|x_pos\(8),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X24_Y21_N16
\LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = (\hvsync_gen|local_hpos\(9) & (!\LessThan0~15_cout\ & \car_control_inst|x_pos\(9))) # (!\hvsync_gen|local_hpos\(9) & ((\car_control_inst|x_pos\(9)) # (!\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(9),
	datad => \car_control_inst|x_pos\(9),
	cin => \LessThan0~15_cout\,
	combout => \LessThan0~16_combout\);

-- Location: LCCOMB_X23_Y25_N4
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\LessThan1~16_combout\ & (\process_1~0_combout\ & !\LessThan0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~16_combout\,
	datac => \process_1~0_combout\,
	datad => \LessThan0~16_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X22_Y20_N14
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\process_1~1_combout\ & ((\hvsync_gen|local_vpos\(5) & (!\hvsync_gen|local_vpos\(6))) # (!\hvsync_gen|local_vpos\(5) & ((!\process_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(6),
	datab => \hvsync_gen|local_vpos\(5),
	datac => \process_1~2_combout\,
	datad => \process_1~1_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\hvsync_gen|local_hpos\(1) & ((GND) # (!\car_control_inst|x_pos\(1)))) # (!\hvsync_gen|local_hpos\(1) & (\car_control_inst|x_pos\(1) $ (GND)))
-- \Add2~1\ = CARRY((\hvsync_gen|local_hpos\(1)) # (!\car_control_inst|x_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \car_control_inst|x_pos\(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X24_Y21_N24
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\hvsync_gen|local_hpos\(2) & ((\car_control_inst|x_pos\(2) & (!\Add2~1\)) # (!\car_control_inst|x_pos\(2) & (\Add2~1\ & VCC)))) # (!\hvsync_gen|local_hpos\(2) & ((\car_control_inst|x_pos\(2) & ((\Add2~1\) # (GND))) # 
-- (!\car_control_inst|x_pos\(2) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\hvsync_gen|local_hpos\(2) & (\car_control_inst|x_pos\(2) & !\Add2~1\)) # (!\hvsync_gen|local_hpos\(2) & ((\car_control_inst|x_pos\(2)) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \car_control_inst|x_pos\(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X24_Y21_N26
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\car_control_inst|x_pos\(3) $ (\hvsync_gen|local_hpos\(3) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\car_control_inst|x_pos\(3) & (\hvsync_gen|local_hpos\(3) & !\Add2~3\)) # (!\car_control_inst|x_pos\(3) & ((\hvsync_gen|local_hpos\(3)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(3),
	datab => \hvsync_gen|local_hpos\(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y21_N28
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\hvsync_gen|local_hpos\(4) & ((\car_control_inst|x_pos\(4) & (!\Add2~5\)) # (!\car_control_inst|x_pos\(4) & (\Add2~5\ & VCC)))) # (!\hvsync_gen|local_hpos\(4) & ((\car_control_inst|x_pos\(4) & ((\Add2~5\) # (GND))) # 
-- (!\car_control_inst|x_pos\(4) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\hvsync_gen|local_hpos\(4) & (\car_control_inst|x_pos\(4) & !\Add2~5\)) # (!\hvsync_gen|local_hpos\(4) & ((\car_control_inst|x_pos\(4)) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \car_control_inst|x_pos\(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X24_Y21_N30
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \car_control_inst|x_pos\(5) $ (\hvsync_gen|local_hpos\(5) $ (\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(5),
	datab => \hvsync_gen|local_hpos\(5),
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X24_Y23_N24
\Mux35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Add2~4_combout\) # ((\Add2~0_combout\ & (\hvsync_gen|local_hpos\(0) & \Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~2_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X19_Y21_N16
\Mux35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Add2~6_combout\) # ((\Add2~8_combout\) # (\Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X17_Y21_N0
\Mux39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!\Add2~6_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X17_Y23_N16
\Mux39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = \Add2~6_combout\ $ (((\hvsync_gen|local_hpos\(0) & (\Add2~0_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~6_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X17_Y23_N10
\Mux39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Add2~8_combout\ & (((\Add2~4_combout\)) # (!\Mux39~0_combout\))) # (!\Add2~8_combout\ & (((\Mux39~1_combout\ & !\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X17_Y23_N20
\Mux39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Add2~4_combout\ & (\Add2~6_combout\ $ (((\Add2~2_combout\) # (!\Mux39~2_combout\))))) # (!\Add2~4_combout\ & (\Mux39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X19_Y21_N6
\Mux46~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~30_combout\ = (\hvsync_gen|local_vpos\(5)) # ((\hvsync_gen|local_vpos\(0) & ((\Mux39~3_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux35~1_combout\,
	datac => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~30_combout\);

-- Location: LCCOMB_X22_Y25_N24
\Mux34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!\Add2~8_combout\ & !\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datac => \Add2~6_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X19_Y21_N0
\Mux46~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~27_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4)) # ((\Mux34~0_combout\ & !\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux34~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux35~0_combout\,
	combout => \Mux46~27_combout\);

-- Location: LCCOMB_X17_Y22_N24
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\Add2~8_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datac => \Add2~4_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X17_Y21_N26
\Mux42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Add2~6_combout\ & (!\Add2~2_combout\ & ((!\Add2~0_combout\) # (!\hvsync_gen|local_hpos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~6_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X16_Y21_N16
\Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = \Add2~6_combout\ $ (\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X17_Y21_N4
\Mux42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Add2~8_combout\ & (((\Mux39~4_combout\) # (\Add2~4_combout\)))) # (!\Add2~8_combout\ & (!\Mux42~0_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datab => \Add2~8_combout\,
	datac => \Mux39~4_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X19_Y25_N16
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y21_N30
\Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux42~1_combout\) # ((\Mux9~0_combout\ & ((!\Mux3~0_combout\) # (!\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux39~0_combout\,
	datac => \Mux42~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X19_Y21_N18
\Mux46~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~28_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux42~2_combout\))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux35~1_combout\,
	datac => \Mux42~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~28_combout\);

-- Location: LCCOMB_X19_Y21_N28
\Mux46~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~29_combout\ = (\hvsync_gen|local_vpos\(1) & (((\hvsync_gen|local_vpos\(2))))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(2) & (\Mux46~27_combout\)) # (!\hvsync_gen|local_vpos\(2) & ((\Mux46~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux46~27_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \Mux46~28_combout\,
	combout => \Mux46~29_combout\);

-- Location: LCCOMB_X19_Y21_N12
\Mux46~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~25_combout\ = (\hvsync_gen|local_vpos\(4) & (((\hvsync_gen|local_vpos\(0)) # (\Mux42~2_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux35~1_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux42~2_combout\,
	combout => \Mux46~25_combout\);

-- Location: LCCOMB_X19_Y21_N22
\Mux46~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~26_combout\ = (\Mux46~25_combout\ & !\hvsync_gen|local_vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~25_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~26_combout\);

-- Location: LCCOMB_X19_Y21_N8
\Mux46~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~31_combout\ = (\Mux46~29_combout\ & (((!\hvsync_gen|local_vpos\(1))) # (!\Mux46~30_combout\))) # (!\Mux46~29_combout\ & (((\Mux46~26_combout\ & \hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~30_combout\,
	datab => \Mux46~29_combout\,
	datac => \Mux46~26_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux46~31_combout\);

-- Location: LCCOMB_X20_Y20_N16
\Mux46~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = \hvsync_gen|local_vpos\(2) $ (\hvsync_gen|local_vpos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X24_Y23_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Add2~4_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X24_Y23_N18
\Mux46~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~18_combout\ = (\Add2~8_combout\ & (\Add2~6_combout\ & (\Mux13~0_combout\))) # (!\Add2~8_combout\ & (\Add2~6_combout\ $ (((!\Mux35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux13~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux46~18_combout\);

-- Location: LCCOMB_X20_Y21_N12
\Mux46~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~19_combout\ = (\Mux46~5_combout\ & ((\hvsync_gen|local_vpos\(4) & (!\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux46~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux39~3_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux46~18_combout\,
	combout => \Mux46~19_combout\);

-- Location: LCCOMB_X20_Y21_N16
\Mux46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\hvsync_gen|local_vpos\(4) & ((!\Mux39~3_combout\))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datab => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X21_Y25_N16
\Mux46~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~11_combout\ = (!\hvsync_gen|local_vpos\(2) & !\hvsync_gen|local_vpos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux46~11_combout\);

-- Location: LCCOMB_X20_Y21_N6
\Mux46~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~20_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux46~19_combout\) # ((\Mux46~1_combout\ & \Mux46~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~19_combout\,
	datab => \Mux46~1_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux46~11_combout\,
	combout => \Mux46~20_combout\);

-- Location: LCCOMB_X16_Y21_N10
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\Add2~6_combout\ & ((\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~0_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X17_Y21_N24
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Add2~6_combout\ & (((!\Add2~2_combout\) # (!\Add2~0_combout\)) # (!\hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~6_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X16_Y21_N12
\Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (!\Add2~8_combout\ & ((\Add2~4_combout\ & (\Mux19~0_combout\)) # (!\Add2~4_combout\ & ((\Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux19~1_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X16_Y21_N30
\Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\) # ((\Add2~8_combout\ & (\Mux39~0_combout\ $ (!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X22_Y23_N16
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Add2~8_combout\ & (((!\Add2~4_combout\ & !\Add2~2_combout\)))) # (!\Add2~8_combout\ & (\Mux3~0_combout\ & (\Add2~4_combout\ & \Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X22_Y23_N2
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\) # (\Add2~8_combout\ $ (\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux3~1_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X20_Y21_N8
\Mux46~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~21_combout\ = (\Mux19~3_combout\ & (\Mux46~11_combout\ & ((!\Mux3~2_combout\)))) # (!\Mux19~3_combout\ & ((\Mux46~5_combout\) # ((\Mux46~11_combout\ & !\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux46~11_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux46~21_combout\);

-- Location: LCCOMB_X23_Y23_N18
\Mux46~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~22_combout\ = (\hvsync_gen|local_vpos\(4) & !\hvsync_gen|local_vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~22_combout\);

-- Location: LCCOMB_X24_Y23_N2
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Add2~4_combout\ & (((!\Add2~2_combout\)))) # (!\Add2~4_combout\ & ((\Add2~2_combout\) # ((\Add2~0_combout\ & \hvsync_gen|local_hpos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~2_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X24_Y23_N12
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Add2~6_combout\ & ((\Mux17~0_combout\) # ((\Add2~8_combout\)))) # (!\Add2~6_combout\ & (((!\Add2~8_combout\ & !\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux17~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X24_Y23_N6
\Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Add2~8_combout\ & ((\Add2~4_combout\ & ((\Add2~2_combout\))) # (!\Add2~4_combout\ & (\Mux17~1_combout\ & !\Add2~2_combout\)))) # (!\Add2~8_combout\ & (\Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X23_Y23_N16
\Mux46~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~7_combout\ = (\hvsync_gen|local_vpos\(4) & (((!\Mux39~3_combout\)))) # (!\hvsync_gen|local_vpos\(4) & ((\Mux17~2_combout\) # ((!\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Mux39~3_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~7_combout\);

-- Location: LCCOMB_X20_Y20_N18
\Mux46~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~17_combout\ = (\hvsync_gen|local_vpos\(2) & (\Mux46~7_combout\ & \hvsync_gen|local_vpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(2),
	datac => \Mux46~7_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux46~17_combout\);

-- Location: LCCOMB_X20_Y21_N2
\Mux46~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~23_combout\ = (\Mux46~20_combout\) # ((\Mux46~17_combout\) # ((\Mux46~21_combout\ & \Mux46~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~20_combout\,
	datab => \Mux46~21_combout\,
	datac => \Mux46~22_combout\,
	datad => \Mux46~17_combout\,
	combout => \Mux46~23_combout\);

-- Location: LCCOMB_X20_Y24_N16
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Add2~4_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X20_Y24_N26
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Add2~6_combout\ & (\Mux3~3_combout\ & (\Add2~8_combout\))) # (!\Add2~6_combout\ & (((!\Add2~8_combout\ & !\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~3_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\Mux46~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~13_combout\ = (\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (!\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \Mux20~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~13_combout\);

-- Location: LCCOMB_X20_Y24_N12
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Add2~6_combout\ & (((\Add2~8_combout\) # (!\Mux35~0_combout\)))) # (!\Add2~6_combout\ & ((\Mux3~3_combout\) # ((!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~3_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X17_Y24_N16
\Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = \Add2~4_combout\ $ (\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X21_Y25_N26
\Mux46~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~14_combout\ = (\Add2~8_combout\ & (\Mux17~3_combout\ & (!\Add2~6_combout\))) # (!\Add2~8_combout\ & ((\Add2~6_combout\ $ (!\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux35~0_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux46~14_combout\);

-- Location: LCCOMB_X21_Y21_N4
\Mux46~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~15_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux46~14_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux46~14_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~15_combout\);

-- Location: LCCOMB_X19_Y24_N8
\Mux46~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~10_combout\ = (\hvsync_gen|local_vpos\(2) & \hvsync_gen|local_vpos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux46~10_combout\);

-- Location: LCCOMB_X19_Y21_N24
\Mux46~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~8_combout\ = (\hvsync_gen|local_vpos\(4) & (((\hvsync_gen|local_vpos\(5))) # (!\Mux35~1_combout\))) # (!\hvsync_gen|local_vpos\(4) & (((!\Mux3~2_combout\ & !\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux35~1_combout\,
	datac => \Mux3~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~8_combout\);

-- Location: LCCOMB_X17_Y23_N0
\Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Add2~8_combout\) # ((\Add2~2_combout\ & (\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X17_Y23_N14
\Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Add2~4_combout\ & ((\Add2~6_combout\ & ((\Add2~2_combout\))) # (!\Add2~6_combout\ & (\Add2~8_combout\ & !\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X17_Y23_N18
\Mux28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux28~0_combout\) # ((!\Mux28~1_combout\ & (!\Add2~6_combout\ & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux28~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X19_Y21_N10
\Mux46~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~9_combout\ = (\Mux46~8_combout\ & (((\Mux28~2_combout\) # (!\hvsync_gen|local_vpos\(5))))) # (!\Mux46~8_combout\ & (!\Mux39~3_combout\ & ((\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \Mux46~8_combout\,
	datac => \Mux28~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~9_combout\);

-- Location: LCCOMB_X21_Y21_N0
\Mux46~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~12_combout\ = (\Mux46~7_combout\ & ((\Mux46~11_combout\) # ((\Mux46~10_combout\ & \Mux46~9_combout\)))) # (!\Mux46~7_combout\ & (\Mux46~10_combout\ & ((\Mux46~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~7_combout\,
	datab => \Mux46~10_combout\,
	datac => \Mux46~11_combout\,
	datad => \Mux46~9_combout\,
	combout => \Mux46~12_combout\);

-- Location: LCCOMB_X21_Y21_N14
\Mux46~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~16_combout\ = (\Mux46~12_combout\) # ((\Mux46~5_combout\ & ((\Mux46~13_combout\) # (\Mux46~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~5_combout\,
	datab => \Mux46~13_combout\,
	datac => \Mux46~15_combout\,
	datad => \Mux46~12_combout\,
	combout => \Mux46~16_combout\);

-- Location: LCCOMB_X20_Y21_N20
\Mux46~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~24_combout\ = (\hvsync_gen|local_vpos\(6) & (((\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(6) & ((\hvsync_gen|local_vpos\(3) & ((\Mux46~16_combout\))) # (!\hvsync_gen|local_vpos\(3) & (\Mux46~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(6),
	datab => \Mux46~23_combout\,
	datac => \Mux46~16_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux46~24_combout\);

-- Location: LCCOMB_X19_Y21_N26
\Mux46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(4))))) # (!\hvsync_gen|local_vpos\(2) & ((\hvsync_gen|local_vpos\(4) & (!\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux28~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \hvsync_gen|local_vpos\(2),
	datac => \Mux28~2_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X19_Y21_N20
\Mux46~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\hvsync_gen|local_vpos\(0) & ((\Mux42~2_combout\))) # (!\hvsync_gen|local_vpos\(0) & (!\Mux39~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux42~2_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X19_Y21_N14
\Mux46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux46~2_combout\ & ((\Mux46~3_combout\) # ((!\hvsync_gen|local_vpos\(2))))) # (!\Mux46~2_combout\ & (((\hvsync_gen|local_vpos\(2) & !\Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~2_combout\,
	datab => \Mux46~3_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \Mux35~1_combout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X20_Y21_N18
\Mux46~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~6_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux46~5_combout\ & ((\Mux46~1_combout\))) # (!\Mux46~5_combout\ & (\Mux46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~4_combout\,
	datab => \Mux46~5_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux46~1_combout\,
	combout => \Mux46~6_combout\);

-- Location: LCCOMB_X20_Y21_N30
\Mux46~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~32_combout\ = (\Mux46~24_combout\ & ((\Mux46~31_combout\) # ((!\hvsync_gen|local_vpos\(6))))) # (!\Mux46~24_combout\ & (((\Mux46~6_combout\ & \hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~31_combout\,
	datab => \Mux46~24_combout\,
	datac => \Mux46~6_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux46~32_combout\);

-- Location: LCCOMB_X23_Y19_N26
\hvsync_gen|display_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|display_on~0_combout\ = (!\hvsync_gen|local_hpos\(7) & !\hvsync_gen|local_hpos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datad => \hvsync_gen|local_hpos\(8),
	combout => \hvsync_gen|display_on~0_combout\);

-- Location: LCCOMB_X23_Y24_N20
\hvsync_gen|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|LessThan5~0_combout\ = (((!\hvsync_gen|local_vpos\(5)) # (!\hvsync_gen|local_vpos\(6))) # (!\hvsync_gen|local_vpos\(8))) # (!\hvsync_gen|local_vpos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(7),
	datab => \hvsync_gen|local_vpos\(8),
	datac => \hvsync_gen|local_vpos\(6),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \hvsync_gen|LessThan5~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\hvsync_gen|display_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|display_on~1_combout\ = (!\hvsync_gen|local_vpos\(9) & (\hvsync_gen|LessThan5~0_combout\ & ((\hvsync_gen|display_on~0_combout\) # (!\hvsync_gen|local_hpos\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|display_on~0_combout\,
	datab => \hvsync_gen|local_vpos\(9),
	datac => \hvsync_gen|LessThan5~0_combout\,
	datad => \hvsync_gen|local_hpos\(9),
	combout => \hvsync_gen|display_on~1_combout\);

-- Location: LCCOMB_X22_Y18_N10
\track_obstacle_inst|random_seed[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[8]~13_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[8]~13_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[7]~10_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[8]~13_combout\,
	combout => \track_obstacle_inst|random_seed[8]~13_combout\);

-- Location: LCCOMB_X22_Y18_N6
\track_obstacle_inst|random_seed[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[8]~15_combout\ = \track_obstacle_inst|random_seed[8]~13_combout\ $ (\track_obstacle_inst|random_seed[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[8]~13_combout\,
	datab => \track_obstacle_inst|random_seed[7]~10_combout\,
	combout => \track_obstacle_inst|random_seed[8]~15_combout\);

-- Location: LCCOMB_X24_Y24_N12
\track_obstacle_inst|obstacle_y[0][0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][0]~10_combout\ = \track_obstacle_inst|obstacle_y[0][0]~q\ $ (VCC)
-- \track_obstacle_inst|obstacle_y[0][0]~11\ = CARRY(\track_obstacle_inst|obstacle_y[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][0]~q\,
	datad => VCC,
	combout => \track_obstacle_inst|obstacle_y[0][0]~10_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][0]~11\);

-- Location: LCCOMB_X27_Y18_N0
\track_obstacle_inst|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~0_combout\ = \track_obstacle_inst|slow_counter\(0) $ (VCC)
-- \track_obstacle_inst|Add5~1\ = CARRY(\track_obstacle_inst|slow_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(0),
	datad => VCC,
	combout => \track_obstacle_inst|Add5~0_combout\,
	cout => \track_obstacle_inst|Add5~1\);

-- Location: LCCOMB_X26_Y18_N12
\track_obstacle_inst|slow_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~6_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~10_combout\,
	datac => \track_obstacle_inst|Add5~0_combout\,
	combout => \track_obstacle_inst|slow_counter~6_combout\);

-- Location: FF_X26_Y18_N13
\track_obstacle_inst|slow_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(0));

-- Location: LCCOMB_X27_Y18_N2
\track_obstacle_inst|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~2_combout\ = (\track_obstacle_inst|slow_counter\(1) & (!\track_obstacle_inst|Add5~1\)) # (!\track_obstacle_inst|slow_counter\(1) & ((\track_obstacle_inst|Add5~1\) # (GND)))
-- \track_obstacle_inst|Add5~3\ = CARRY((!\track_obstacle_inst|Add5~1\) # (!\track_obstacle_inst|slow_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(1),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~1\,
	combout => \track_obstacle_inst|Add5~2_combout\,
	cout => \track_obstacle_inst|Add5~3\);

-- Location: FF_X27_Y18_N3
\track_obstacle_inst|slow_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(1));

-- Location: LCCOMB_X27_Y18_N4
\track_obstacle_inst|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~4_combout\ = (\track_obstacle_inst|slow_counter\(2) & (\track_obstacle_inst|Add5~3\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(2) & (!\track_obstacle_inst|Add5~3\ & VCC))
-- \track_obstacle_inst|Add5~5\ = CARRY((\track_obstacle_inst|slow_counter\(2) & !\track_obstacle_inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(2),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~3\,
	combout => \track_obstacle_inst|Add5~4_combout\,
	cout => \track_obstacle_inst|Add5~5\);

-- Location: FF_X27_Y18_N5
\track_obstacle_inst|slow_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(2));

-- Location: LCCOMB_X27_Y18_N6
\track_obstacle_inst|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~6_combout\ = (\track_obstacle_inst|slow_counter\(3) & (!\track_obstacle_inst|Add5~5\)) # (!\track_obstacle_inst|slow_counter\(3) & ((\track_obstacle_inst|Add5~5\) # (GND)))
-- \track_obstacle_inst|Add5~7\ = CARRY((!\track_obstacle_inst|Add5~5\) # (!\track_obstacle_inst|slow_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(3),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~5\,
	combout => \track_obstacle_inst|Add5~6_combout\,
	cout => \track_obstacle_inst|Add5~7\);

-- Location: FF_X27_Y18_N7
\track_obstacle_inst|slow_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(3));

-- Location: LCCOMB_X27_Y18_N8
\track_obstacle_inst|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~8_combout\ = (\track_obstacle_inst|slow_counter\(4) & (\track_obstacle_inst|Add5~7\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(4) & (!\track_obstacle_inst|Add5~7\ & VCC))
-- \track_obstacle_inst|Add5~9\ = CARRY((\track_obstacle_inst|slow_counter\(4) & !\track_obstacle_inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(4),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~7\,
	combout => \track_obstacle_inst|Add5~8_combout\,
	cout => \track_obstacle_inst|Add5~9\);

-- Location: FF_X27_Y18_N9
\track_obstacle_inst|slow_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(4));

-- Location: LCCOMB_X27_Y18_N10
\track_obstacle_inst|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~10_combout\ = (\track_obstacle_inst|slow_counter\(5) & (!\track_obstacle_inst|Add5~9\)) # (!\track_obstacle_inst|slow_counter\(5) & ((\track_obstacle_inst|Add5~9\) # (GND)))
-- \track_obstacle_inst|Add5~11\ = CARRY((!\track_obstacle_inst|Add5~9\) # (!\track_obstacle_inst|slow_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(5),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~9\,
	combout => \track_obstacle_inst|Add5~10_combout\,
	cout => \track_obstacle_inst|Add5~11\);

-- Location: FF_X27_Y18_N11
\track_obstacle_inst|slow_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(5));

-- Location: LCCOMB_X27_Y18_N12
\track_obstacle_inst|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~12_combout\ = (\track_obstacle_inst|slow_counter\(6) & (\track_obstacle_inst|Add5~11\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(6) & (!\track_obstacle_inst|Add5~11\ & VCC))
-- \track_obstacle_inst|Add5~13\ = CARRY((\track_obstacle_inst|slow_counter\(6) & !\track_obstacle_inst|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(6),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~11\,
	combout => \track_obstacle_inst|Add5~12_combout\,
	cout => \track_obstacle_inst|Add5~13\);

-- Location: LCCOMB_X26_Y18_N16
\track_obstacle_inst|slow_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~5_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~10_combout\,
	datac => \track_obstacle_inst|Add5~12_combout\,
	combout => \track_obstacle_inst|slow_counter~5_combout\);

-- Location: FF_X26_Y18_N17
\track_obstacle_inst|slow_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(6));

-- Location: LCCOMB_X27_Y18_N14
\track_obstacle_inst|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~14_combout\ = (\track_obstacle_inst|slow_counter\(7) & (!\track_obstacle_inst|Add5~13\)) # (!\track_obstacle_inst|slow_counter\(7) & ((\track_obstacle_inst|Add5~13\) # (GND)))
-- \track_obstacle_inst|Add5~15\ = CARRY((!\track_obstacle_inst|Add5~13\) # (!\track_obstacle_inst|slow_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(7),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~13\,
	combout => \track_obstacle_inst|Add5~14_combout\,
	cout => \track_obstacle_inst|Add5~15\);

-- Location: FF_X27_Y18_N15
\track_obstacle_inst|slow_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(7));

-- Location: LCCOMB_X27_Y18_N16
\track_obstacle_inst|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~16_combout\ = (\track_obstacle_inst|slow_counter\(8) & (\track_obstacle_inst|Add5~15\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(8) & (!\track_obstacle_inst|Add5~15\ & VCC))
-- \track_obstacle_inst|Add5~17\ = CARRY((\track_obstacle_inst|slow_counter\(8) & !\track_obstacle_inst|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(8),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~15\,
	combout => \track_obstacle_inst|Add5~16_combout\,
	cout => \track_obstacle_inst|Add5~17\);

-- Location: LCCOMB_X26_Y18_N28
\track_obstacle_inst|slow_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~4_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Equal0~10_combout\,
	datad => \track_obstacle_inst|Add5~16_combout\,
	combout => \track_obstacle_inst|slow_counter~4_combout\);

-- Location: FF_X26_Y18_N29
\track_obstacle_inst|slow_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(8));

-- Location: LCCOMB_X27_Y18_N18
\track_obstacle_inst|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~18_combout\ = (\track_obstacle_inst|slow_counter\(9) & (!\track_obstacle_inst|Add5~17\)) # (!\track_obstacle_inst|slow_counter\(9) & ((\track_obstacle_inst|Add5~17\) # (GND)))
-- \track_obstacle_inst|Add5~19\ = CARRY((!\track_obstacle_inst|Add5~17\) # (!\track_obstacle_inst|slow_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(9),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~17\,
	combout => \track_obstacle_inst|Add5~18_combout\,
	cout => \track_obstacle_inst|Add5~19\);

-- Location: FF_X27_Y18_N19
\track_obstacle_inst|slow_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(9));

-- Location: LCCOMB_X27_Y18_N20
\track_obstacle_inst|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~20_combout\ = (\track_obstacle_inst|slow_counter\(10) & (\track_obstacle_inst|Add5~19\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(10) & (!\track_obstacle_inst|Add5~19\ & VCC))
-- \track_obstacle_inst|Add5~21\ = CARRY((\track_obstacle_inst|slow_counter\(10) & !\track_obstacle_inst|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(10),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~19\,
	combout => \track_obstacle_inst|Add5~20_combout\,
	cout => \track_obstacle_inst|Add5~21\);

-- Location: LCCOMB_X26_Y18_N2
\track_obstacle_inst|slow_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~3_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~10_combout\,
	datac => \track_obstacle_inst|Add5~20_combout\,
	combout => \track_obstacle_inst|slow_counter~3_combout\);

-- Location: FF_X26_Y18_N3
\track_obstacle_inst|slow_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(10));

-- Location: LCCOMB_X27_Y18_N22
\track_obstacle_inst|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~22_combout\ = (\track_obstacle_inst|slow_counter\(11) & (!\track_obstacle_inst|Add5~21\)) # (!\track_obstacle_inst|slow_counter\(11) & ((\track_obstacle_inst|Add5~21\) # (GND)))
-- \track_obstacle_inst|Add5~23\ = CARRY((!\track_obstacle_inst|Add5~21\) # (!\track_obstacle_inst|slow_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(11),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~21\,
	combout => \track_obstacle_inst|Add5~22_combout\,
	cout => \track_obstacle_inst|Add5~23\);

-- Location: LCCOMB_X26_Y18_N8
\track_obstacle_inst|slow_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~2_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Equal0~10_combout\,
	datad => \track_obstacle_inst|Add5~22_combout\,
	combout => \track_obstacle_inst|slow_counter~2_combout\);

-- Location: FF_X26_Y18_N9
\track_obstacle_inst|slow_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(11));

-- Location: LCCOMB_X27_Y18_N24
\track_obstacle_inst|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~24_combout\ = (\track_obstacle_inst|slow_counter\(12) & (\track_obstacle_inst|Add5~23\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(12) & (!\track_obstacle_inst|Add5~23\ & VCC))
-- \track_obstacle_inst|Add5~25\ = CARRY((\track_obstacle_inst|slow_counter\(12) & !\track_obstacle_inst|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(12),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~23\,
	combout => \track_obstacle_inst|Add5~24_combout\,
	cout => \track_obstacle_inst|Add5~25\);

-- Location: FF_X27_Y18_N25
\track_obstacle_inst|slow_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(12));

-- Location: LCCOMB_X27_Y18_N26
\track_obstacle_inst|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~26_combout\ = (\track_obstacle_inst|slow_counter\(13) & (!\track_obstacle_inst|Add5~25\)) # (!\track_obstacle_inst|slow_counter\(13) & ((\track_obstacle_inst|Add5~25\) # (GND)))
-- \track_obstacle_inst|Add5~27\ = CARRY((!\track_obstacle_inst|Add5~25\) # (!\track_obstacle_inst|slow_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(13),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~25\,
	combout => \track_obstacle_inst|Add5~26_combout\,
	cout => \track_obstacle_inst|Add5~27\);

-- Location: FF_X27_Y18_N27
\track_obstacle_inst|slow_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~26_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(13));

-- Location: LCCOMB_X27_Y18_N28
\track_obstacle_inst|Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~28_combout\ = (\track_obstacle_inst|slow_counter\(14) & (\track_obstacle_inst|Add5~27\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(14) & (!\track_obstacle_inst|Add5~27\ & VCC))
-- \track_obstacle_inst|Add5~29\ = CARRY((\track_obstacle_inst|slow_counter\(14) & !\track_obstacle_inst|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(14),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~27\,
	combout => \track_obstacle_inst|Add5~28_combout\,
	cout => \track_obstacle_inst|Add5~29\);

-- Location: FF_X27_Y18_N29
\track_obstacle_inst|slow_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(14));

-- Location: LCCOMB_X27_Y18_N30
\track_obstacle_inst|Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~30_combout\ = (\track_obstacle_inst|slow_counter\(15) & (!\track_obstacle_inst|Add5~29\)) # (!\track_obstacle_inst|slow_counter\(15) & ((\track_obstacle_inst|Add5~29\) # (GND)))
-- \track_obstacle_inst|Add5~31\ = CARRY((!\track_obstacle_inst|Add5~29\) # (!\track_obstacle_inst|slow_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(15),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~29\,
	combout => \track_obstacle_inst|Add5~30_combout\,
	cout => \track_obstacle_inst|Add5~31\);

-- Location: FF_X27_Y18_N31
\track_obstacle_inst|slow_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(15));

-- Location: LCCOMB_X27_Y17_N0
\track_obstacle_inst|Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~32_combout\ = (\track_obstacle_inst|slow_counter\(16) & (\track_obstacle_inst|Add5~31\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(16) & (!\track_obstacle_inst|Add5~31\ & VCC))
-- \track_obstacle_inst|Add5~33\ = CARRY((\track_obstacle_inst|slow_counter\(16) & !\track_obstacle_inst|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(16),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~31\,
	combout => \track_obstacle_inst|Add5~32_combout\,
	cout => \track_obstacle_inst|Add5~33\);

-- Location: LCCOMB_X26_Y18_N18
\track_obstacle_inst|slow_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~1_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Equal0~10_combout\,
	datad => \track_obstacle_inst|Add5~32_combout\,
	combout => \track_obstacle_inst|slow_counter~1_combout\);

-- Location: FF_X26_Y18_N19
\track_obstacle_inst|slow_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(16));

-- Location: LCCOMB_X27_Y17_N2
\track_obstacle_inst|Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~34_combout\ = (\track_obstacle_inst|slow_counter\(17) & (!\track_obstacle_inst|Add5~33\)) # (!\track_obstacle_inst|slow_counter\(17) & ((\track_obstacle_inst|Add5~33\) # (GND)))
-- \track_obstacle_inst|Add5~35\ = CARRY((!\track_obstacle_inst|Add5~33\) # (!\track_obstacle_inst|slow_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(17),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~33\,
	combout => \track_obstacle_inst|Add5~34_combout\,
	cout => \track_obstacle_inst|Add5~35\);

-- Location: LCCOMB_X26_Y18_N0
\track_obstacle_inst|slow_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~0_combout\ = (!\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|Add5~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Equal0~10_combout\,
	datad => \track_obstacle_inst|Add5~34_combout\,
	combout => \track_obstacle_inst|slow_counter~0_combout\);

-- Location: FF_X26_Y18_N1
\track_obstacle_inst|slow_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|slow_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(17));

-- Location: LCCOMB_X27_Y17_N4
\track_obstacle_inst|Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~36_combout\ = (\track_obstacle_inst|slow_counter\(18) & (\track_obstacle_inst|Add5~35\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(18) & (!\track_obstacle_inst|Add5~35\ & VCC))
-- \track_obstacle_inst|Add5~37\ = CARRY((\track_obstacle_inst|slow_counter\(18) & !\track_obstacle_inst|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(18),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~35\,
	combout => \track_obstacle_inst|Add5~36_combout\,
	cout => \track_obstacle_inst|Add5~37\);

-- Location: FF_X27_Y17_N5
\track_obstacle_inst|slow_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~36_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(18));

-- Location: LCCOMB_X27_Y17_N6
\track_obstacle_inst|Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~38_combout\ = (\track_obstacle_inst|slow_counter\(19) & (!\track_obstacle_inst|Add5~37\)) # (!\track_obstacle_inst|slow_counter\(19) & ((\track_obstacle_inst|Add5~37\) # (GND)))
-- \track_obstacle_inst|Add5~39\ = CARRY((!\track_obstacle_inst|Add5~37\) # (!\track_obstacle_inst|slow_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(19),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~37\,
	combout => \track_obstacle_inst|Add5~38_combout\,
	cout => \track_obstacle_inst|Add5~39\);

-- Location: FF_X27_Y17_N7
\track_obstacle_inst|slow_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~38_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(19));

-- Location: LCCOMB_X27_Y17_N8
\track_obstacle_inst|Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~40_combout\ = (\track_obstacle_inst|slow_counter\(20) & (\track_obstacle_inst|Add5~39\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(20) & (!\track_obstacle_inst|Add5~39\ & VCC))
-- \track_obstacle_inst|Add5~41\ = CARRY((\track_obstacle_inst|slow_counter\(20) & !\track_obstacle_inst|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(20),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~39\,
	combout => \track_obstacle_inst|Add5~40_combout\,
	cout => \track_obstacle_inst|Add5~41\);

-- Location: FF_X27_Y17_N9
\track_obstacle_inst|slow_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~40_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(20));

-- Location: LCCOMB_X27_Y17_N10
\track_obstacle_inst|Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~42_combout\ = (\track_obstacle_inst|slow_counter\(21) & (!\track_obstacle_inst|Add5~41\)) # (!\track_obstacle_inst|slow_counter\(21) & ((\track_obstacle_inst|Add5~41\) # (GND)))
-- \track_obstacle_inst|Add5~43\ = CARRY((!\track_obstacle_inst|Add5~41\) # (!\track_obstacle_inst|slow_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(21),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~41\,
	combout => \track_obstacle_inst|Add5~42_combout\,
	cout => \track_obstacle_inst|Add5~43\);

-- Location: FF_X27_Y17_N11
\track_obstacle_inst|slow_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~42_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(21));

-- Location: LCCOMB_X27_Y17_N12
\track_obstacle_inst|Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~44_combout\ = (\track_obstacle_inst|slow_counter\(22) & (\track_obstacle_inst|Add5~43\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(22) & (!\track_obstacle_inst|Add5~43\ & VCC))
-- \track_obstacle_inst|Add5~45\ = CARRY((\track_obstacle_inst|slow_counter\(22) & !\track_obstacle_inst|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(22),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~43\,
	combout => \track_obstacle_inst|Add5~44_combout\,
	cout => \track_obstacle_inst|Add5~45\);

-- Location: FF_X27_Y17_N13
\track_obstacle_inst|slow_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~44_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(22));

-- Location: LCCOMB_X27_Y17_N14
\track_obstacle_inst|Add5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~46_combout\ = (\track_obstacle_inst|slow_counter\(23) & (!\track_obstacle_inst|Add5~45\)) # (!\track_obstacle_inst|slow_counter\(23) & ((\track_obstacle_inst|Add5~45\) # (GND)))
-- \track_obstacle_inst|Add5~47\ = CARRY((!\track_obstacle_inst|Add5~45\) # (!\track_obstacle_inst|slow_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(23),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~45\,
	combout => \track_obstacle_inst|Add5~46_combout\,
	cout => \track_obstacle_inst|Add5~47\);

-- Location: FF_X27_Y17_N15
\track_obstacle_inst|slow_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(23));

-- Location: LCCOMB_X26_Y17_N12
\track_obstacle_inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~2_combout\ = (!\track_obstacle_inst|slow_counter\(21) & (!\track_obstacle_inst|slow_counter\(22) & (!\track_obstacle_inst|slow_counter\(20) & !\track_obstacle_inst|slow_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(21),
	datab => \track_obstacle_inst|slow_counter\(22),
	datac => \track_obstacle_inst|slow_counter\(20),
	datad => \track_obstacle_inst|slow_counter\(23),
	combout => \track_obstacle_inst|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y17_N16
\track_obstacle_inst|Add5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~48_combout\ = (\track_obstacle_inst|slow_counter\(24) & (\track_obstacle_inst|Add5~47\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(24) & (!\track_obstacle_inst|Add5~47\ & VCC))
-- \track_obstacle_inst|Add5~49\ = CARRY((\track_obstacle_inst|slow_counter\(24) & !\track_obstacle_inst|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(24),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~47\,
	combout => \track_obstacle_inst|Add5~48_combout\,
	cout => \track_obstacle_inst|Add5~49\);

-- Location: FF_X27_Y17_N17
\track_obstacle_inst|slow_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~48_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(24));

-- Location: LCCOMB_X27_Y17_N18
\track_obstacle_inst|Add5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~50_combout\ = (\track_obstacle_inst|slow_counter\(25) & (!\track_obstacle_inst|Add5~49\)) # (!\track_obstacle_inst|slow_counter\(25) & ((\track_obstacle_inst|Add5~49\) # (GND)))
-- \track_obstacle_inst|Add5~51\ = CARRY((!\track_obstacle_inst|Add5~49\) # (!\track_obstacle_inst|slow_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(25),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~49\,
	combout => \track_obstacle_inst|Add5~50_combout\,
	cout => \track_obstacle_inst|Add5~51\);

-- Location: FF_X27_Y17_N19
\track_obstacle_inst|slow_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~50_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(25));

-- Location: LCCOMB_X27_Y17_N20
\track_obstacle_inst|Add5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~52_combout\ = (\track_obstacle_inst|slow_counter\(26) & (\track_obstacle_inst|Add5~51\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(26) & (!\track_obstacle_inst|Add5~51\ & VCC))
-- \track_obstacle_inst|Add5~53\ = CARRY((\track_obstacle_inst|slow_counter\(26) & !\track_obstacle_inst|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(26),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~51\,
	combout => \track_obstacle_inst|Add5~52_combout\,
	cout => \track_obstacle_inst|Add5~53\);

-- Location: FF_X27_Y17_N21
\track_obstacle_inst|slow_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~52_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(26));

-- Location: LCCOMB_X27_Y17_N22
\track_obstacle_inst|Add5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~54_combout\ = (\track_obstacle_inst|slow_counter\(27) & (!\track_obstacle_inst|Add5~53\)) # (!\track_obstacle_inst|slow_counter\(27) & ((\track_obstacle_inst|Add5~53\) # (GND)))
-- \track_obstacle_inst|Add5~55\ = CARRY((!\track_obstacle_inst|Add5~53\) # (!\track_obstacle_inst|slow_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(27),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~53\,
	combout => \track_obstacle_inst|Add5~54_combout\,
	cout => \track_obstacle_inst|Add5~55\);

-- Location: FF_X27_Y17_N23
\track_obstacle_inst|slow_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~54_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(27));

-- Location: LCCOMB_X27_Y17_N24
\track_obstacle_inst|Add5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~56_combout\ = (\track_obstacle_inst|slow_counter\(28) & (\track_obstacle_inst|Add5~55\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(28) & (!\track_obstacle_inst|Add5~55\ & VCC))
-- \track_obstacle_inst|Add5~57\ = CARRY((\track_obstacle_inst|slow_counter\(28) & !\track_obstacle_inst|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(28),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~55\,
	combout => \track_obstacle_inst|Add5~56_combout\,
	cout => \track_obstacle_inst|Add5~57\);

-- Location: FF_X27_Y17_N25
\track_obstacle_inst|slow_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~56_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(28));

-- Location: LCCOMB_X27_Y17_N26
\track_obstacle_inst|Add5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~58_combout\ = (\track_obstacle_inst|slow_counter\(29) & (!\track_obstacle_inst|Add5~57\)) # (!\track_obstacle_inst|slow_counter\(29) & ((\track_obstacle_inst|Add5~57\) # (GND)))
-- \track_obstacle_inst|Add5~59\ = CARRY((!\track_obstacle_inst|Add5~57\) # (!\track_obstacle_inst|slow_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(29),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~57\,
	combout => \track_obstacle_inst|Add5~58_combout\,
	cout => \track_obstacle_inst|Add5~59\);

-- Location: FF_X27_Y17_N27
\track_obstacle_inst|slow_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~58_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(29));

-- Location: LCCOMB_X27_Y17_N28
\track_obstacle_inst|Add5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~60_combout\ = (\track_obstacle_inst|slow_counter\(30) & (\track_obstacle_inst|Add5~59\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(30) & (!\track_obstacle_inst|Add5~59\ & VCC))
-- \track_obstacle_inst|Add5~61\ = CARRY((\track_obstacle_inst|slow_counter\(30) & !\track_obstacle_inst|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(30),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~59\,
	combout => \track_obstacle_inst|Add5~60_combout\,
	cout => \track_obstacle_inst|Add5~61\);

-- Location: FF_X27_Y17_N29
\track_obstacle_inst|slow_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~60_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(30));

-- Location: LCCOMB_X27_Y17_N30
\track_obstacle_inst|Add5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~62_combout\ = \track_obstacle_inst|slow_counter\(31) $ (\track_obstacle_inst|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(31),
	cin => \track_obstacle_inst|Add5~61\,
	combout => \track_obstacle_inst|Add5~62_combout\);

-- Location: FF_X27_Y17_N31
\track_obstacle_inst|slow_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|Add5~62_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|slow_counter\(31));

-- Location: LCCOMB_X26_Y17_N0
\track_obstacle_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~0_combout\ = (!\track_obstacle_inst|slow_counter\(29) & (!\track_obstacle_inst|slow_counter\(30) & (!\track_obstacle_inst|slow_counter\(31) & !\track_obstacle_inst|slow_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(29),
	datab => \track_obstacle_inst|slow_counter\(30),
	datac => \track_obstacle_inst|slow_counter\(31),
	datad => \track_obstacle_inst|slow_counter\(28),
	combout => \track_obstacle_inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y18_N20
\track_obstacle_inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~3_combout\ = (!\track_obstacle_inst|slow_counter\(19) & (\track_obstacle_inst|slow_counter\(16) & (\track_obstacle_inst|slow_counter\(17) & !\track_obstacle_inst|slow_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(19),
	datab => \track_obstacle_inst|slow_counter\(16),
	datac => \track_obstacle_inst|slow_counter\(17),
	datad => \track_obstacle_inst|slow_counter\(18),
	combout => \track_obstacle_inst|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y17_N2
\track_obstacle_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~1_combout\ = (!\track_obstacle_inst|slow_counter\(27) & (!\track_obstacle_inst|slow_counter\(25) & (!\track_obstacle_inst|slow_counter\(26) & !\track_obstacle_inst|slow_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(27),
	datab => \track_obstacle_inst|slow_counter\(25),
	datac => \track_obstacle_inst|slow_counter\(26),
	datad => \track_obstacle_inst|slow_counter\(24),
	combout => \track_obstacle_inst|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y17_N14
\track_obstacle_inst|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~4_combout\ = (\track_obstacle_inst|Equal0~2_combout\ & (\track_obstacle_inst|Equal0~0_combout\ & (\track_obstacle_inst|Equal0~3_combout\ & \track_obstacle_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~2_combout\,
	datab => \track_obstacle_inst|Equal0~0_combout\,
	datac => \track_obstacle_inst|Equal0~3_combout\,
	datad => \track_obstacle_inst|Equal0~1_combout\,
	combout => \track_obstacle_inst|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y18_N10
\track_obstacle_inst|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~7_combout\ = (!\track_obstacle_inst|slow_counter\(5) & !\track_obstacle_inst|slow_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(5),
	datac => \track_obstacle_inst|slow_counter\(4),
	combout => \track_obstacle_inst|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y18_N14
\track_obstacle_inst|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~8_combout\ = (!\track_obstacle_inst|slow_counter\(1) & (!\track_obstacle_inst|slow_counter\(2) & (!\track_obstacle_inst|slow_counter\(0) & !\track_obstacle_inst|slow_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(1),
	datab => \track_obstacle_inst|slow_counter\(2),
	datac => \track_obstacle_inst|slow_counter\(0),
	datad => \track_obstacle_inst|slow_counter\(3),
	combout => \track_obstacle_inst|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y18_N24
\track_obstacle_inst|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~9_combout\ = (\track_obstacle_inst|Equal0~7_combout\ & (\track_obstacle_inst|Equal0~8_combout\ & (!\track_obstacle_inst|slow_counter\(7) & \track_obstacle_inst|slow_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~7_combout\,
	datab => \track_obstacle_inst|Equal0~8_combout\,
	datac => \track_obstacle_inst|slow_counter\(7),
	datad => \track_obstacle_inst|slow_counter\(6),
	combout => \track_obstacle_inst|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y18_N22
\track_obstacle_inst|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~6_combout\ = (!\track_obstacle_inst|slow_counter\(9) & (\track_obstacle_inst|slow_counter\(10) & (\track_obstacle_inst|slow_counter\(11) & \track_obstacle_inst|slow_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(9),
	datab => \track_obstacle_inst|slow_counter\(10),
	datac => \track_obstacle_inst|slow_counter\(11),
	datad => \track_obstacle_inst|slow_counter\(8),
	combout => \track_obstacle_inst|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y18_N6
\track_obstacle_inst|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~5_combout\ = (!\track_obstacle_inst|slow_counter\(13) & (!\track_obstacle_inst|slow_counter\(14) & (!\track_obstacle_inst|slow_counter\(15) & !\track_obstacle_inst|slow_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(13),
	datab => \track_obstacle_inst|slow_counter\(14),
	datac => \track_obstacle_inst|slow_counter\(15),
	datad => \track_obstacle_inst|slow_counter\(12),
	combout => \track_obstacle_inst|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y18_N26
\track_obstacle_inst|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~10_combout\ = (\track_obstacle_inst|Equal0~4_combout\ & (\track_obstacle_inst|Equal0~9_combout\ & (\track_obstacle_inst|Equal0~6_combout\ & \track_obstacle_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~4_combout\,
	datab => \track_obstacle_inst|Equal0~9_combout\,
	datac => \track_obstacle_inst|Equal0~6_combout\,
	datad => \track_obstacle_inst|Equal0~5_combout\,
	combout => \track_obstacle_inst|Equal0~10_combout\);

-- Location: FF_X24_Y24_N13
\track_obstacle_inst|obstacle_y[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][0]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][0]~q\);

-- Location: LCCOMB_X24_Y24_N14
\track_obstacle_inst|obstacle_y[0][1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][1]~12_combout\ = (\track_obstacle_inst|obstacle_y[0][1]~q\ & (!\track_obstacle_inst|obstacle_y[0][0]~11\)) # (!\track_obstacle_inst|obstacle_y[0][1]~q\ & ((\track_obstacle_inst|obstacle_y[0][0]~11\) # (GND)))
-- \track_obstacle_inst|obstacle_y[0][1]~13\ = CARRY((!\track_obstacle_inst|obstacle_y[0][0]~11\) # (!\track_obstacle_inst|obstacle_y[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][1]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][0]~11\,
	combout => \track_obstacle_inst|obstacle_y[0][1]~12_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][1]~13\);

-- Location: FF_X24_Y24_N15
\track_obstacle_inst|obstacle_y[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][1]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][1]~q\);

-- Location: LCCOMB_X24_Y24_N16
\track_obstacle_inst|obstacle_y[0][2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][2]~14_combout\ = (\track_obstacle_inst|obstacle_y[0][2]~q\ & (\track_obstacle_inst|obstacle_y[0][1]~13\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][2]~q\ & (!\track_obstacle_inst|obstacle_y[0][1]~13\ & VCC))
-- \track_obstacle_inst|obstacle_y[0][2]~15\ = CARRY((\track_obstacle_inst|obstacle_y[0][2]~q\ & !\track_obstacle_inst|obstacle_y[0][1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][2]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][1]~13\,
	combout => \track_obstacle_inst|obstacle_y[0][2]~14_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][2]~15\);

-- Location: FF_X24_Y24_N17
\track_obstacle_inst|obstacle_y[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][2]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][2]~q\);

-- Location: LCCOMB_X24_Y24_N18
\track_obstacle_inst|obstacle_y[0][3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][3]~16_combout\ = (\track_obstacle_inst|obstacle_y[0][3]~q\ & (!\track_obstacle_inst|obstacle_y[0][2]~15\)) # (!\track_obstacle_inst|obstacle_y[0][3]~q\ & ((\track_obstacle_inst|obstacle_y[0][2]~15\) # (GND)))
-- \track_obstacle_inst|obstacle_y[0][3]~17\ = CARRY((!\track_obstacle_inst|obstacle_y[0][2]~15\) # (!\track_obstacle_inst|obstacle_y[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][3]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][2]~15\,
	combout => \track_obstacle_inst|obstacle_y[0][3]~16_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][3]~17\);

-- Location: FF_X24_Y24_N19
\track_obstacle_inst|obstacle_y[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][3]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][3]~q\);

-- Location: LCCOMB_X24_Y24_N20
\track_obstacle_inst|obstacle_y[0][4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][4]~18_combout\ = (\track_obstacle_inst|obstacle_y[0][4]~q\ & (\track_obstacle_inst|obstacle_y[0][3]~17\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][4]~q\ & (!\track_obstacle_inst|obstacle_y[0][3]~17\ & VCC))
-- \track_obstacle_inst|obstacle_y[0][4]~19\ = CARRY((\track_obstacle_inst|obstacle_y[0][4]~q\ & !\track_obstacle_inst|obstacle_y[0][3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][3]~17\,
	combout => \track_obstacle_inst|obstacle_y[0][4]~18_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][4]~19\);

-- Location: FF_X24_Y24_N21
\track_obstacle_inst|obstacle_y[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][4]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][4]~q\);

-- Location: LCCOMB_X24_Y24_N22
\track_obstacle_inst|obstacle_y[0][5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][5]~20_combout\ = (\track_obstacle_inst|obstacle_y[0][5]~q\ & (!\track_obstacle_inst|obstacle_y[0][4]~19\)) # (!\track_obstacle_inst|obstacle_y[0][5]~q\ & ((\track_obstacle_inst|obstacle_y[0][4]~19\) # (GND)))
-- \track_obstacle_inst|obstacle_y[0][5]~21\ = CARRY((!\track_obstacle_inst|obstacle_y[0][4]~19\) # (!\track_obstacle_inst|obstacle_y[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][4]~19\,
	combout => \track_obstacle_inst|obstacle_y[0][5]~20_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][5]~21\);

-- Location: FF_X24_Y24_N23
\track_obstacle_inst|obstacle_y[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][5]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][5]~q\);

-- Location: LCCOMB_X24_Y24_N24
\track_obstacle_inst|obstacle_y[0][6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][6]~22_combout\ = (\track_obstacle_inst|obstacle_y[0][6]~q\ & (\track_obstacle_inst|obstacle_y[0][5]~21\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][6]~q\ & (!\track_obstacle_inst|obstacle_y[0][5]~21\ & VCC))
-- \track_obstacle_inst|obstacle_y[0][6]~23\ = CARRY((\track_obstacle_inst|obstacle_y[0][6]~q\ & !\track_obstacle_inst|obstacle_y[0][5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][6]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][5]~21\,
	combout => \track_obstacle_inst|obstacle_y[0][6]~22_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][6]~23\);

-- Location: FF_X24_Y24_N25
\track_obstacle_inst|obstacle_y[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][6]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][6]~q\);

-- Location: LCCOMB_X24_Y24_N26
\track_obstacle_inst|obstacle_y[0][7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][7]~24_combout\ = (\track_obstacle_inst|obstacle_y[0][7]~q\ & (!\track_obstacle_inst|obstacle_y[0][6]~23\)) # (!\track_obstacle_inst|obstacle_y[0][7]~q\ & ((\track_obstacle_inst|obstacle_y[0][6]~23\) # (GND)))
-- \track_obstacle_inst|obstacle_y[0][7]~25\ = CARRY((!\track_obstacle_inst|obstacle_y[0][6]~23\) # (!\track_obstacle_inst|obstacle_y[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][7]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][6]~23\,
	combout => \track_obstacle_inst|obstacle_y[0][7]~24_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][7]~25\);

-- Location: FF_X24_Y24_N27
\track_obstacle_inst|obstacle_y[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][7]~24_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][7]~q\);

-- Location: LCCOMB_X24_Y24_N28
\track_obstacle_inst|obstacle_y[0][8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][8]~26_combout\ = (\track_obstacle_inst|obstacle_y[0][8]~q\ & (\track_obstacle_inst|obstacle_y[0][7]~25\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][8]~q\ & (!\track_obstacle_inst|obstacle_y[0][7]~25\ & VCC))
-- \track_obstacle_inst|obstacle_y[0][8]~27\ = CARRY((\track_obstacle_inst|obstacle_y[0][8]~q\ & !\track_obstacle_inst|obstacle_y[0][7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][8]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][7]~25\,
	combout => \track_obstacle_inst|obstacle_y[0][8]~26_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][8]~27\);

-- Location: FF_X24_Y24_N29
\track_obstacle_inst|obstacle_y[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][8]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][8]~q\);

-- Location: LCCOMB_X24_Y24_N4
\track_obstacle_inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan6~1_combout\ = (\track_obstacle_inst|obstacle_y[0][6]~q\ & (\track_obstacle_inst|obstacle_y[0][7]~q\ & \track_obstacle_inst|obstacle_y[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][6]~q\,
	datac => \track_obstacle_inst|obstacle_y[0][7]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][8]~q\,
	combout => \track_obstacle_inst|LessThan6~1_combout\);

-- Location: LCCOMB_X24_Y24_N30
\track_obstacle_inst|obstacle_y[0][9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][9]~28_combout\ = \track_obstacle_inst|obstacle_y[0][9]~q\ $ (\track_obstacle_inst|obstacle_y[0][8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][9]~q\,
	cin => \track_obstacle_inst|obstacle_y[0][8]~27\,
	combout => \track_obstacle_inst|obstacle_y[0][9]~28_combout\);

-- Location: FF_X24_Y24_N31
\track_obstacle_inst|obstacle_y[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_y[0][9]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \track_obstacle_inst|LessThan0~2_combout\,
	ena => \track_obstacle_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_y[0][9]~q\);

-- Location: LCCOMB_X24_Y24_N0
\track_obstacle_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan0~0_combout\ = (!\track_obstacle_inst|obstacle_y[0][4]~q\ & (!\track_obstacle_inst|obstacle_y[0][3]~q\ & !\track_obstacle_inst|obstacle_y[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datac => \track_obstacle_inst|obstacle_y[0][3]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][2]~q\,
	combout => \track_obstacle_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y24_N8
\track_obstacle_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan0~1_combout\ = ((\track_obstacle_inst|obstacle_y[0][1]~q\) # (\track_obstacle_inst|obstacle_y[0][0]~q\)) # (!\track_obstacle_inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|LessThan0~0_combout\,
	datac => \track_obstacle_inst|obstacle_y[0][1]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][0]~q\,
	combout => \track_obstacle_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y24_N2
\track_obstacle_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan0~2_combout\ = (\track_obstacle_inst|obstacle_y[0][9]~q\) # ((\track_obstacle_inst|obstacle_y[0][5]~q\ & (\track_obstacle_inst|LessThan6~1_combout\ & \track_obstacle_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datab => \track_obstacle_inst|LessThan6~1_combout\,
	datac => \track_obstacle_inst|obstacle_y[0][9]~q\,
	datad => \track_obstacle_inst|LessThan0~1_combout\,
	combout => \track_obstacle_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y18_N20
\track_obstacle_inst|obstacle_x[0][9]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~56_combout\ = (\track_obstacle_inst|LessThan0~2_combout\ & \track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|LessThan0~2_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~56_combout\);

-- Location: FF_X22_Y18_N7
\track_obstacle_inst|random_seed[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|random_seed[8]~15_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|random_seed[8]~_emulated_q\);

-- Location: LCCOMB_X22_Y18_N24
\track_obstacle_inst|random_seed[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[8]~14_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[8]~13_combout\ $ (((\track_obstacle_inst|random_seed[8]~_emulated_q\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|random_seed[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[8]~13_combout\,
	datab => \track_obstacle_inst|random_seed[7]~10_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[8]~_emulated_q\,
	combout => \track_obstacle_inst|random_seed[8]~14_combout\);

-- Location: LCCOMB_X22_Y18_N16
\track_obstacle_inst|random_seed[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[9]~17_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[9]~17_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[8]~14_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[9]~17_combout\,
	combout => \track_obstacle_inst|random_seed[9]~17_combout\);

-- Location: LCCOMB_X22_Y18_N26
\track_obstacle_inst|random_seed[9]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[9]~19_combout\ = \track_obstacle_inst|random_seed[9]~17_combout\ $ (\track_obstacle_inst|random_seed[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[9]~17_combout\,
	datad => \track_obstacle_inst|random_seed[8]~14_combout\,
	combout => \track_obstacle_inst|random_seed[9]~19_combout\);

-- Location: FF_X22_Y18_N27
\track_obstacle_inst|random_seed[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|random_seed[9]~19_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|random_seed[9]~_emulated_q\);

-- Location: LCCOMB_X22_Y18_N4
\track_obstacle_inst|random_seed[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[9]~18_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[9]~_emulated_q\ $ ((\track_obstacle_inst|random_seed[9]~17_combout\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|random_seed[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[9]~_emulated_q\,
	datab => \track_obstacle_inst|random_seed[9]~17_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[8]~14_combout\,
	combout => \track_obstacle_inst|random_seed[9]~18_combout\);

-- Location: LCCOMB_X21_Y18_N20
\track_obstacle_inst|lfsr_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|lfsr_reg~0_combout\ = \track_obstacle_inst|obstacle_x[0][3]~26_combout\ $ (\track_obstacle_inst|random_seed[5]~2_combout\ $ (\track_obstacle_inst|obstacle_x[0][2]~30_combout\ $ (\track_obstacle_inst|random_seed[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datab => \track_obstacle_inst|random_seed[5]~2_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datad => \track_obstacle_inst|random_seed[9]~18_combout\,
	combout => \track_obstacle_inst|lfsr_reg~0_combout\);

-- Location: LCCOMB_X21_Y18_N10
\track_obstacle_inst|random_seed[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[0]~25_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[0]~25_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|lfsr_reg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|lfsr_reg~0_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[0]~25_combout\,
	combout => \track_obstacle_inst|random_seed[0]~25_combout\);

-- Location: LCCOMB_X21_Y18_N0
\track_obstacle_inst|random_seed[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[0]~27_combout\ = \track_obstacle_inst|random_seed[0]~25_combout\ $ (\track_obstacle_inst|lfsr_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[0]~25_combout\,
	datad => \track_obstacle_inst|lfsr_reg~0_combout\,
	combout => \track_obstacle_inst|random_seed[0]~27_combout\);

-- Location: FF_X21_Y18_N1
\track_obstacle_inst|random_seed[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|random_seed[0]~27_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|random_seed[0]~_emulated_q\);

-- Location: LCCOMB_X21_Y18_N18
\track_obstacle_inst|random_seed[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[0]~26_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[0]~25_combout\ $ (((\track_obstacle_inst|random_seed[0]~_emulated_q\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|lfsr_reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[0]~25_combout\,
	datab => \track_obstacle_inst|lfsr_reg~0_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[0]~_emulated_q\,
	combout => \track_obstacle_inst|random_seed[0]~26_combout\);

-- Location: LCCOMB_X21_Y18_N16
\track_obstacle_inst|obstacle_x[0][0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][0]~37_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][0]~37_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[0]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[0]~26_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][0]~37_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][0]~37_combout\);

-- Location: LCCOMB_X21_Y18_N4
\track_obstacle_inst|obstacle_x[0][0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][0]~39_combout\ = \track_obstacle_inst|obstacle_x[0][0]~37_combout\ $ (\track_obstacle_inst|random_seed[0]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][0]~37_combout\,
	datad => \track_obstacle_inst|random_seed[0]~26_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][0]~39_combout\);

-- Location: FF_X21_Y18_N5
\track_obstacle_inst|obstacle_x[0][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][0]~39_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][0]~_emulated_q\);

-- Location: LCCOMB_X21_Y18_N30
\track_obstacle_inst|obstacle_x[0][0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][0]~38_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][0]~37_combout\ $ ((\track_obstacle_inst|obstacle_x[0][0]~_emulated_q\)))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|random_seed[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][0]~37_combout\,
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][0]~_emulated_q\,
	datad => \track_obstacle_inst|random_seed[0]~26_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][0]~38_combout\);

-- Location: LCCOMB_X21_Y17_N24
\track_obstacle_inst|obstacle_x[0][1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][1]~33_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][1]~33_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][0]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~33_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][1]~33_combout\);

-- Location: LCCOMB_X21_Y17_N16
\track_obstacle_inst|obstacle_x[0][1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][1]~35_combout\ = \track_obstacle_inst|obstacle_x[0][0]~38_combout\ $ (\track_obstacle_inst|obstacle_x[0][1]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~33_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][1]~35_combout\);

-- Location: FF_X21_Y17_N17
\track_obstacle_inst|obstacle_x[0][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][1]~35_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][1]~_emulated_q\);

-- Location: LCCOMB_X21_Y17_N10
\track_obstacle_inst|obstacle_x[0][1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][1]~34_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][1]~33_combout\ $ (((\track_obstacle_inst|obstacle_x[0][1]~_emulated_q\))))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|obstacle_x[0][0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|obstacle_x[0][1]~33_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][1]~34_combout\);

-- Location: LCCOMB_X21_Y17_N6
\track_obstacle_inst|obstacle_x[0][2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][2]~29_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][2]~29_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][1]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][2]~29_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][2]~29_combout\);

-- Location: LCCOMB_X21_Y17_N12
\track_obstacle_inst|obstacle_x[0][2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][2]~31_combout\ = \track_obstacle_inst|obstacle_x[0][2]~29_combout\ $ (\track_obstacle_inst|obstacle_x[0][1]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][2]~29_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][2]~31_combout\);

-- Location: FF_X21_Y17_N13
\track_obstacle_inst|obstacle_x[0][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][2]~31_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][2]~_emulated_q\);

-- Location: LCCOMB_X21_Y17_N30
\track_obstacle_inst|obstacle_x[0][2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][2]~30_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][2]~_emulated_q\ $ ((\track_obstacle_inst|obstacle_x[0][2]~29_combout\)))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|obstacle_x[0][1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][2]~_emulated_q\,
	datab => \track_obstacle_inst|obstacle_x[0][2]~29_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][2]~30_combout\);

-- Location: LCCOMB_X21_Y18_N22
\track_obstacle_inst|obstacle_x[0][3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][3]~25_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][3]~25_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][2]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][3]~25_combout\,
	datad => \reset~input_o\,
	combout => \track_obstacle_inst|obstacle_x[0][3]~25_combout\);

-- Location: LCCOMB_X21_Y18_N24
\track_obstacle_inst|obstacle_x[0][3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][3]~27_combout\ = \track_obstacle_inst|obstacle_x[0][3]~25_combout\ $ (\track_obstacle_inst|obstacle_x[0][2]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~25_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][3]~27_combout\);

-- Location: FF_X21_Y18_N25
\track_obstacle_inst|obstacle_x[0][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][3]~27_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][3]~_emulated_q\);

-- Location: LCCOMB_X21_Y18_N26
\track_obstacle_inst|obstacle_x[0][3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][3]~26_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][3]~25_combout\ $ (((\track_obstacle_inst|obstacle_x[0][3]~_emulated_q\))))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|obstacle_x[0][2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~25_combout\,
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][3]~26_combout\);

-- Location: LCCOMB_X21_Y18_N6
\track_obstacle_inst|random_seed[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[5]~1_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[5]~1_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][3]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[5]~1_combout\,
	combout => \track_obstacle_inst|random_seed[5]~1_combout\);

-- Location: LCCOMB_X21_Y18_N8
\track_obstacle_inst|random_seed[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[5]~3_combout\ = \track_obstacle_inst|obstacle_x[0][3]~26_combout\ $ (\track_obstacle_inst|random_seed[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datad => \track_obstacle_inst|random_seed[5]~1_combout\,
	combout => \track_obstacle_inst|random_seed[5]~3_combout\);

-- Location: FF_X21_Y18_N9
\track_obstacle_inst|random_seed[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|random_seed[5]~3_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|random_seed[5]~_emulated_q\);

-- Location: LCCOMB_X21_Y18_N2
\track_obstacle_inst|random_seed[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[5]~2_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[5]~_emulated_q\ $ (((\track_obstacle_inst|random_seed[5]~1_combout\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|obstacle_x[0][3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|random_seed[5]~_emulated_q\,
	datac => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datad => \track_obstacle_inst|random_seed[5]~1_combout\,
	combout => \track_obstacle_inst|random_seed[5]~2_combout\);

-- Location: LCCOMB_X21_Y18_N28
\track_obstacle_inst|random_seed[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[6]~5_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[6]~5_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[5]~2_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[6]~5_combout\,
	combout => \track_obstacle_inst|random_seed[6]~5_combout\);

-- Location: LCCOMB_X21_Y18_N12
\track_obstacle_inst|random_seed[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[6]~7_combout\ = \track_obstacle_inst|random_seed[6]~5_combout\ $ (\track_obstacle_inst|random_seed[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[6]~5_combout\,
	datad => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|random_seed[6]~7_combout\);

-- Location: FF_X21_Y18_N13
\track_obstacle_inst|random_seed[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|random_seed[6]~7_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|random_seed[6]~_emulated_q\);

-- Location: LCCOMB_X21_Y18_N14
\track_obstacle_inst|random_seed[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[6]~6_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[6]~_emulated_q\ $ ((\track_obstacle_inst|random_seed[6]~5_combout\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|random_seed[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[6]~_emulated_q\,
	datab => \track_obstacle_inst|random_seed[6]~5_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|random_seed[6]~6_combout\);

-- Location: LCCOMB_X22_Y18_N12
\track_obstacle_inst|random_seed[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[7]~9_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[7]~9_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[6]~6_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[7]~9_combout\,
	combout => \track_obstacle_inst|random_seed[7]~9_combout\);

-- Location: LCCOMB_X22_Y18_N18
\track_obstacle_inst|random_seed[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[7]~11_combout\ = \track_obstacle_inst|random_seed[7]~9_combout\ $ (\track_obstacle_inst|random_seed[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[7]~9_combout\,
	datad => \track_obstacle_inst|random_seed[6]~6_combout\,
	combout => \track_obstacle_inst|random_seed[7]~11_combout\);

-- Location: FF_X22_Y18_N19
\track_obstacle_inst|random_seed[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|random_seed[7]~11_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|random_seed[7]~_emulated_q\);

-- Location: LCCOMB_X22_Y18_N28
\track_obstacle_inst|random_seed[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[7]~10_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[7]~9_combout\ $ ((\track_obstacle_inst|random_seed[7]~_emulated_q\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|random_seed[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[7]~9_combout\,
	datab => \track_obstacle_inst|random_seed[7]~_emulated_q\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[6]~6_combout\,
	combout => \track_obstacle_inst|random_seed[7]~10_combout\);

-- Location: LCCOMB_X20_Y18_N4
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ = \track_obstacle_inst|obstacle_x[0][3]~26_combout\ $ (VCC)
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ = CARRY(\track_obstacle_inst|obstacle_x[0][3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datad => VCC,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\);

-- Location: LCCOMB_X20_Y18_N6
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ = (\track_obstacle_inst|random_seed[5]~2_combout\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\)) # 
-- (!\track_obstacle_inst|random_seed[5]~2_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\) # (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ = CARRY((!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\) # (!\track_obstacle_inst|random_seed[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[5]~2_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\);

-- Location: LCCOMB_X20_Y18_N8
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ = (\track_obstacle_inst|random_seed[6]~6_combout\ & ((GND) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\))) # 
-- (!\track_obstacle_inst|random_seed[6]~6_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ $ (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ = CARRY((\track_obstacle_inst|random_seed[6]~6_combout\) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[6]~6_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\);

-- Location: LCCOMB_X20_Y18_N10
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ = (\track_obstacle_inst|random_seed[7]~10_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ & VCC)) # 
-- (!\track_obstacle_inst|random_seed[7]~10_combout\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ = CARRY((!\track_obstacle_inst|random_seed[7]~10_combout\ & !\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[7]~10_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\);

-- Location: LCCOMB_X20_Y18_N12
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ = (\track_obstacle_inst|random_seed[8]~14_combout\ & ((GND) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\))) # 
-- (!\track_obstacle_inst|random_seed[8]~14_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ $ (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ = CARRY((\track_obstacle_inst|random_seed[8]~14_combout\) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[8]~14_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\);

-- Location: LCCOMB_X20_Y18_N14
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ = (\track_obstacle_inst|random_seed[9]~18_combout\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\)) # 
-- (!\track_obstacle_inst|random_seed[9]~18_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\) # (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ = CARRY((!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\) # (!\track_obstacle_inst|random_seed[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[9]~18_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\);

-- Location: LCCOMB_X20_Y18_N16
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\);

-- Location: LCCOMB_X20_Y18_N24
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[7]~10_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \track_obstacle_inst|random_seed[7]~10_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\);

-- Location: LCCOMB_X20_Y18_N2
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|random_seed[6]~6_combout\)) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \track_obstacle_inst|random_seed[6]~6_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\);

-- Location: LCCOMB_X20_Y18_N26
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[5]~2_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\);

-- Location: LCCOMB_X20_Y18_N28
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|obstacle_x[0][3]~26_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\);

-- Location: LCCOMB_X20_Y18_N20
\track_obstacle_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~0_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\) # 
-- ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\ & \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	combout => \track_obstacle_inst|Add0~0_combout\);

-- Location: LCCOMB_X22_Y18_N14
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[9]~18_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \track_obstacle_inst|random_seed[9]~18_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\);

-- Location: LCCOMB_X20_Y18_N22
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[8]~14_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \track_obstacle_inst|random_seed[8]~14_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\);

-- Location: LCCOMB_X22_Y18_N0
\track_obstacle_inst|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~1_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ $ (((\track_obstacle_inst|Add0~0_combout\ & \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~0_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\,
	combout => \track_obstacle_inst|Add0~1_combout\);

-- Location: LCCOMB_X22_Y18_N30
\track_obstacle_inst|obstacle_x[0][9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~1_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][9]~1_combout\)) # (!\reset~input_o\ & ((\track_obstacle_inst|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][9]~1_combout\,
	datad => \track_obstacle_inst|Add0~1_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~1_combout\);

-- Location: LCCOMB_X22_Y18_N8
\track_obstacle_inst|obstacle_x[0][9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~3_combout\ = \track_obstacle_inst|obstacle_x[0][9]~1_combout\ $ (\track_obstacle_inst|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|obstacle_x[0][9]~1_combout\,
	datad => \track_obstacle_inst|Add0~1_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~3_combout\);

-- Location: FF_X22_Y18_N9
\track_obstacle_inst|obstacle_x[0][9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][9]~3_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][9]~_emulated_q\);

-- Location: LCCOMB_X22_Y18_N2
\track_obstacle_inst|obstacle_x[0][9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~2_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][9]~1_combout\ $ ((\track_obstacle_inst|obstacle_x[0][9]~_emulated_q\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][9]~1_combout\,
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][9]~_emulated_q\,
	datad => \track_obstacle_inst|Add0~1_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~2_combout\);

-- Location: LCCOMB_X20_Y18_N0
\track_obstacle_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~2_combout\ = ((!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\ & !\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\)) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\,
	combout => \track_obstacle_inst|Add0~2_combout\);

-- Location: LCCOMB_X21_Y17_N8
\track_obstacle_inst|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~3_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\ $ (((!\track_obstacle_inst|Add0~2_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\) # 
-- (\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~2_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~4_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\,
	combout => \track_obstacle_inst|Add0~3_combout\);

-- Location: LCCOMB_X22_Y17_N2
\track_obstacle_inst|obstacle_x[0][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][8]~5_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][8]~5_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~3_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][8]~5_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][8]~5_combout\);

-- Location: LCCOMB_X22_Y17_N24
\track_obstacle_inst|obstacle_x[0][8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][8]~7_combout\ = \track_obstacle_inst|obstacle_x[0][8]~5_combout\ $ (\track_obstacle_inst|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][8]~5_combout\,
	datad => \track_obstacle_inst|Add0~3_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][8]~7_combout\);

-- Location: FF_X22_Y17_N25
\track_obstacle_inst|obstacle_x[0][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][8]~7_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][8]~_emulated_q\);

-- Location: LCCOMB_X22_Y17_N26
\track_obstacle_inst|obstacle_x[0][8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][8]~6_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][8]~5_combout\ $ (\track_obstacle_inst|obstacle_x[0][8]~_emulated_q\)))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~3_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][8]~5_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][8]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][8]~6_combout\);

-- Location: LCCOMB_X21_Y17_N2
\track_obstacle_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~6_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\ & 
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\,
	combout => \track_obstacle_inst|Add0~6_combout\);

-- Location: LCCOMB_X21_Y17_N18
\track_obstacle_inst|obstacle_x[0][6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][6]~13_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][6]~13_combout\))) # (!\reset~input_o\ & (!\track_obstacle_inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~6_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][6]~13_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][6]~13_combout\);

-- Location: LCCOMB_X21_Y17_N20
\track_obstacle_inst|obstacle_x[0][6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][6]~15_combout\ = \track_obstacle_inst|obstacle_x[0][6]~13_combout\ $ (!\track_obstacle_inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][6]~13_combout\,
	datad => \track_obstacle_inst|Add0~6_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][6]~15_combout\);

-- Location: FF_X21_Y17_N21
\track_obstacle_inst|obstacle_x[0][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][6]~15_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][6]~_emulated_q\);

-- Location: LCCOMB_X21_Y17_N22
\track_obstacle_inst|obstacle_x[0][6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][6]~14_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][6]~_emulated_q\ $ ((\track_obstacle_inst|obstacle_x[0][6]~13_combout\)))) # (!\reset~input_o\ & (((!\track_obstacle_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][6]~_emulated_q\,
	datab => \track_obstacle_inst|obstacle_x[0][6]~13_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|Add0~6_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][6]~14_combout\);

-- Location: LCCOMB_X20_Y18_N30
\track_obstacle_inst|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~5_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\) # 
-- ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\ & \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~1_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~2_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~3_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	combout => \track_obstacle_inst|Add0~5_combout\);

-- Location: LCCOMB_X22_Y17_N30
\track_obstacle_inst|obstacle_x[0][7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][7]~9_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][7]~9_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|Add0~5_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][7]~9_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][7]~9_combout\);

-- Location: LCCOMB_X22_Y17_N22
\track_obstacle_inst|obstacle_x[0][7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][7]~11_combout\ = \track_obstacle_inst|obstacle_x[0][7]~9_combout\ $ (\track_obstacle_inst|Add0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][7]~9_combout\,
	datac => \track_obstacle_inst|Add0~5_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][7]~11_combout\);

-- Location: FF_X22_Y17_N23
\track_obstacle_inst|obstacle_x[0][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][7]~11_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][7]~_emulated_q\);

-- Location: LCCOMB_X22_Y17_N0
\track_obstacle_inst|obstacle_x[0][7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][7]~10_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][7]~_emulated_q\ $ (\track_obstacle_inst|obstacle_x[0][7]~9_combout\)))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|Add0~5_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][7]~_emulated_q\,
	datad => \track_obstacle_inst|obstacle_x[0][7]~9_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][7]~10_combout\);

-- Location: LCCOMB_X24_Y17_N30
\track_obstacle_inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~4_combout\ = (!\track_obstacle_inst|obstacle_x[0][6]~14_combout\ & !\track_obstacle_inst|obstacle_x[0][7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|obstacle_x[0][6]~14_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][7]~10_combout\,
	combout => \track_obstacle_inst|process_0~4_combout\);

-- Location: LCCOMB_X21_Y17_N28
\track_obstacle_inst|obstacle_x[0][4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][4]~21_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][4]~21_combout\))) # (!\reset~input_o\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][4]~21_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][4]~21_combout\);

-- Location: LCCOMB_X21_Y17_N0
\track_obstacle_inst|obstacle_x[0][4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][4]~23_combout\ = \track_obstacle_inst|obstacle_x[0][4]~21_combout\ $ (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][4]~21_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][4]~23_combout\);

-- Location: FF_X21_Y17_N1
\track_obstacle_inst|obstacle_x[0][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][4]~23_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][4]~_emulated_q\);

-- Location: LCCOMB_X21_Y17_N26
\track_obstacle_inst|obstacle_x[0][4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][4]~22_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][4]~21_combout\ $ (\track_obstacle_inst|obstacle_x[0][4]~_emulated_q\)))) # (!\reset~input_o\ & 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][4]~21_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][4]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][4]~22_combout\);

-- Location: LCCOMB_X20_Y18_N18
\track_obstacle_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~4_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & 
-- ((\track_obstacle_inst|random_seed[5]~2_combout\))) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~5_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|Add0~4_combout\);

-- Location: LCCOMB_X22_Y17_N28
\track_obstacle_inst|obstacle_x[0][5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][5]~17_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][5]~17_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~4_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][5]~17_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][5]~17_combout\);

-- Location: LCCOMB_X22_Y17_N4
\track_obstacle_inst|obstacle_x[0][5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][5]~19_combout\ = \track_obstacle_inst|obstacle_x[0][5]~17_combout\ $ (\track_obstacle_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][5]~17_combout\,
	datad => \track_obstacle_inst|Add0~4_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][5]~19_combout\);

-- Location: FF_X22_Y17_N5
\track_obstacle_inst|obstacle_x[0][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|obstacle_x[0][5]~19_combout\,
	clrn => \reset~input_o\,
	ena => \track_obstacle_inst|obstacle_x[0][9]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|obstacle_x[0][5]~_emulated_q\);

-- Location: LCCOMB_X22_Y17_N6
\track_obstacle_inst|obstacle_x[0][5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][5]~18_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][5]~17_combout\ $ ((\track_obstacle_inst|obstacle_x[0][5]~_emulated_q\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|obstacle_x[0][5]~17_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][5]~_emulated_q\,
	datad => \track_obstacle_inst|Add0~4_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][5]~18_combout\);

-- Location: LCCOMB_X24_Y17_N26
\track_obstacle_inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~0_combout\ = (!\track_obstacle_inst|obstacle_x[0][3]~26_combout\ & (!\track_obstacle_inst|obstacle_x[0][2]~30_combout\ & ((!\track_obstacle_inst|obstacle_x[0][0]~38_combout\) # 
-- (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	combout => \track_obstacle_inst|process_0~0_combout\);

-- Location: LCCOMB_X24_Y24_N10
\track_obstacle_inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan6~0_combout\ = (\track_obstacle_inst|obstacle_y[0][5]~q\) # (((\track_obstacle_inst|obstacle_y[0][1]~q\ & \track_obstacle_inst|obstacle_y[0][0]~q\)) # (!\track_obstacle_inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datab => \track_obstacle_inst|LessThan0~0_combout\,
	datac => \track_obstacle_inst|obstacle_y[0][1]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][0]~q\,
	combout => \track_obstacle_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y25_N14
\track_obstacle_inst|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~0_combout\ = \track_obstacle_inst|obstacle_y[0][3]~q\ $ (VCC)
-- \track_obstacle_inst|Add8~1\ = CARRY(\track_obstacle_inst|obstacle_y[0][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][3]~q\,
	datad => VCC,
	combout => \track_obstacle_inst|Add8~0_combout\,
	cout => \track_obstacle_inst|Add8~1\);

-- Location: LCCOMB_X24_Y25_N16
\track_obstacle_inst|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~2_combout\ = (\track_obstacle_inst|obstacle_y[0][4]~q\ & (!\track_obstacle_inst|Add8~1\)) # (!\track_obstacle_inst|obstacle_y[0][4]~q\ & ((\track_obstacle_inst|Add8~1\) # (GND)))
-- \track_obstacle_inst|Add8~3\ = CARRY((!\track_obstacle_inst|Add8~1\) # (!\track_obstacle_inst|obstacle_y[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~1\,
	combout => \track_obstacle_inst|Add8~2_combout\,
	cout => \track_obstacle_inst|Add8~3\);

-- Location: LCCOMB_X24_Y25_N18
\track_obstacle_inst|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~4_combout\ = (\track_obstacle_inst|obstacle_y[0][5]~q\ & ((GND) # (!\track_obstacle_inst|Add8~3\))) # (!\track_obstacle_inst|obstacle_y[0][5]~q\ & (\track_obstacle_inst|Add8~3\ $ (GND)))
-- \track_obstacle_inst|Add8~5\ = CARRY((\track_obstacle_inst|obstacle_y[0][5]~q\) # (!\track_obstacle_inst|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~3\,
	combout => \track_obstacle_inst|Add8~4_combout\,
	cout => \track_obstacle_inst|Add8~5\);

-- Location: LCCOMB_X24_Y25_N20
\track_obstacle_inst|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~6_combout\ = (\track_obstacle_inst|obstacle_y[0][6]~q\ & (!\track_obstacle_inst|Add8~5\)) # (!\track_obstacle_inst|obstacle_y[0][6]~q\ & ((\track_obstacle_inst|Add8~5\) # (GND)))
-- \track_obstacle_inst|Add8~7\ = CARRY((!\track_obstacle_inst|Add8~5\) # (!\track_obstacle_inst|obstacle_y[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][6]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~5\,
	combout => \track_obstacle_inst|Add8~6_combout\,
	cout => \track_obstacle_inst|Add8~7\);

-- Location: LCCOMB_X24_Y25_N22
\track_obstacle_inst|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~8_combout\ = (\track_obstacle_inst|obstacle_y[0][7]~q\ & (\track_obstacle_inst|Add8~7\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][7]~q\ & (!\track_obstacle_inst|Add8~7\ & VCC))
-- \track_obstacle_inst|Add8~9\ = CARRY((\track_obstacle_inst|obstacle_y[0][7]~q\ & !\track_obstacle_inst|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][7]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~7\,
	combout => \track_obstacle_inst|Add8~8_combout\,
	cout => \track_obstacle_inst|Add8~9\);

-- Location: LCCOMB_X24_Y25_N24
\track_obstacle_inst|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~10_combout\ = (\track_obstacle_inst|obstacle_y[0][8]~q\ & (!\track_obstacle_inst|Add8~9\)) # (!\track_obstacle_inst|obstacle_y[0][8]~q\ & ((\track_obstacle_inst|Add8~9\) # (GND)))
-- \track_obstacle_inst|Add8~11\ = CARRY((!\track_obstacle_inst|Add8~9\) # (!\track_obstacle_inst|obstacle_y[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][8]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~9\,
	combout => \track_obstacle_inst|Add8~10_combout\,
	cout => \track_obstacle_inst|Add8~11\);

-- Location: LCCOMB_X24_Y25_N26
\track_obstacle_inst|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~12_combout\ = \track_obstacle_inst|Add8~11\ $ (!\track_obstacle_inst|obstacle_y[0][9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \track_obstacle_inst|obstacle_y[0][9]~q\,
	cin => \track_obstacle_inst|Add8~11\,
	combout => \track_obstacle_inst|Add8~12_combout\);

-- Location: LCCOMB_X24_Y25_N8
\track_obstacle_inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~1_combout\ = (!\track_obstacle_inst|obstacle_y[0][9]~q\ & ((\track_obstacle_inst|Add8~12_combout\) # ((\track_obstacle_inst|Add8~8_combout\ & \track_obstacle_inst|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~8_combout\,
	datab => \track_obstacle_inst|Add8~10_combout\,
	datac => \track_obstacle_inst|Add8~12_combout\,
	datad => \track_obstacle_inst|obstacle_y[0][9]~q\,
	combout => \track_obstacle_inst|process_0~1_combout\);

-- Location: LCCOMB_X24_Y25_N2
\track_obstacle_inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan7~0_combout\ = (!\track_obstacle_inst|Add8~6_combout\ & (!\track_obstacle_inst|Add8~4_combout\ & (!\track_obstacle_inst|Add8~12_combout\ & !\track_obstacle_inst|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~6_combout\,
	datab => \track_obstacle_inst|Add8~4_combout\,
	datac => \track_obstacle_inst|Add8~12_combout\,
	datad => \track_obstacle_inst|Add8~2_combout\,
	combout => \track_obstacle_inst|LessThan7~0_combout\);

-- Location: LCCOMB_X24_Y24_N6
\track_obstacle_inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~2_combout\ = (\track_obstacle_inst|process_0~1_combout\ & (!\track_obstacle_inst|LessThan7~0_combout\ & ((!\track_obstacle_inst|LessThan6~1_combout\) # (!\track_obstacle_inst|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|LessThan6~0_combout\,
	datab => \track_obstacle_inst|process_0~1_combout\,
	datac => \track_obstacle_inst|LessThan6~1_combout\,
	datad => \track_obstacle_inst|LessThan7~0_combout\,
	combout => \track_obstacle_inst|process_0~2_combout\);

-- Location: LCCOMB_X24_Y17_N28
\track_obstacle_inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~3_combout\ = (\track_obstacle_inst|process_0~2_combout\ & (((\track_obstacle_inst|process_0~0_combout\) # (!\track_obstacle_inst|obstacle_x[0][5]~18_combout\)) # (!\track_obstacle_inst|obstacle_x[0][4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][4]~22_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][5]~18_combout\,
	datac => \track_obstacle_inst|process_0~0_combout\,
	datad => \track_obstacle_inst|process_0~2_combout\,
	combout => \track_obstacle_inst|process_0~3_combout\);

-- Location: LCCOMB_X24_Y17_N4
\track_obstacle_inst|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~5_combout\ = (!\track_obstacle_inst|obstacle_x[0][9]~2_combout\ & (!\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & (\track_obstacle_inst|process_0~4_combout\ & \track_obstacle_inst|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][9]~2_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][8]~6_combout\,
	datac => \track_obstacle_inst|process_0~4_combout\,
	datad => \track_obstacle_inst|process_0~3_combout\,
	combout => \track_obstacle_inst|process_0~5_combout\);

-- Location: FF_X24_Y17_N5
\track_obstacle_inst|collision_detected\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|process_0~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|collision_detected~q\);

-- Location: LCCOMB_X23_Y20_N28
\track_obstacle_inst|track_color~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~10_combout\ = (\track_obstacle_inst|collision_detected~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|collision_detected~q\,
	datac => \reset~input_o\,
	combout => \track_obstacle_inst|track_color~10_combout\);

-- Location: FF_X23_Y20_N29
\track_obstacle_inst|track_color[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(9));

-- Location: LCCOMB_X23_Y20_N30
\rgb_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~0_combout\ = ((!\track_obstacle_inst|collision_detected~q\ & ((\process_1~3_combout\) # (!\track_obstacle_inst|track_color\(9))))) # (!\hvsync_gen|display_on~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|display_on~1_combout\,
	datab => \track_obstacle_inst|track_color\(9),
	datac => \track_obstacle_inst|collision_detected~q\,
	datad => \process_1~3_combout\,
	combout => \rgb_r~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\rgb_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~1_combout\ = ((\process_1~3_combout\ & (\Mux46~32_combout\ & \hvsync_gen|display_on~1_combout\))) # (!\rgb_r~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \Mux46~32_combout\,
	datac => \rgb_r~0_combout\,
	datad => \hvsync_gen|display_on~1_combout\,
	combout => \rgb_r~1_combout\);

-- Location: FF_X23_Y20_N9
\rgb_r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_r[0]~reg0_q\);

-- Location: LCCOMB_X20_Y22_N16
\Mux38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Add2~4_combout\ & (\Add2~2_combout\ $ (((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X22_Y25_N6
\Mux45~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~14_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Add2~6_combout\) # (\Add2~8_combout\)) # (!\Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux45~14_combout\);

-- Location: LCCOMB_X17_Y22_N10
\Mux42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Add2~8_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datac => \Add2~4_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X17_Y23_N28
\Mux32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Add2~8_combout\) # ((\Add2~4_combout\) # ((\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X22_Y22_N24
\Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\Add2~2_combout\ & ((\Add2~6_combout\ & (\Mux42~3_combout\)) # (!\Add2~6_combout\ & ((!\Mux32~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux32~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Mux45~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~15_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux45~14_combout\) # ((\Mux30~0_combout\ & !\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~14_combout\,
	datab => \Mux30~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux45~15_combout\);

-- Location: LCCOMB_X21_Y25_N28
\Mux34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (!\Add2~8_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X17_Y22_N22
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Add2~8_combout\ & (((!\Add2~4_combout\)))) # (!\Add2~8_combout\ & ((\Add2~4_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X17_Y22_N4
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Add2~8_combout\ & (((!\Add2~4_combout\)))) # (!\Add2~8_combout\ & (\hvsync_gen|local_hpos\(0) & (\Add2~4_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X17_Y22_N16
\Mux27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Add2~6_combout\ & (((!\Add2~2_combout\)))) # (!\Add2~6_combout\ & ((\Add2~2_combout\ & ((\Mux27~0_combout\))) # (!\Add2~2_combout\ & (!\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X21_Y22_N24
\Mux45~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~16_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4)) # ((\Mux34~1_combout\) # (\Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux34~1_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux27~1_combout\,
	combout => \Mux45~16_combout\);

-- Location: LCCOMB_X22_Y25_N18
\Mux45~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~17_combout\ = (\hvsync_gen|local_vpos\(2) & ((\Mux45~15_combout\) # ((\hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(2) & (((\Mux45~16_combout\ & !\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux45~15_combout\,
	datac => \Mux45~16_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux45~17_combout\);

-- Location: LCCOMB_X24_Y23_N22
\Mux40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ((\Add2~6_combout\ & ((\Add2~4_combout\) # (\Add2~2_combout\))) # (!\Add2~6_combout\ & ((!\Add2~2_combout\) # (!\Add2~4_combout\)))) # (!\Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X24_Y23_N28
\Mux40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (!\Add2~4_combout\ & (\Add2~2_combout\ $ (((\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~2_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X24_Y23_N16
\Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ((\Add2~6_combout\ & (!\Add2~8_combout\ & \Mux40~0_combout\))) # (!\Mux40~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~8_combout\,
	datac => \Mux40~1_combout\,
	datad => \Mux40~0_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X22_Y25_N12
\Mux45~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~18_combout\ = (\hvsync_gen|local_vpos\(0) & (((!\Mux40~2_combout\)))) # (!\hvsync_gen|local_vpos\(0) & (((!\Mux38~0_combout\)) # (!\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux34~0_combout\,
	datac => \Mux38~0_combout\,
	datad => \Mux40~2_combout\,
	combout => \Mux45~18_combout\);

-- Location: LCCOMB_X17_Y22_N26
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (!\Add2~8_combout\ & (\hvsync_gen|local_hpos\(0) & (!\Add2~4_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X19_Y25_N2
\Mux31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Add2~6_combout\ & (((\Add2~8_combout\ & \Add2~4_combout\)))) # (!\Add2~6_combout\ & (!\Mux3~0_combout\ & (!\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X19_Y25_N14
\Mux31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Add2~2_combout\ & (\Mux9~2_combout\ & ((!\Add2~6_combout\)))) # (!\Add2~2_combout\ & (((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux31~2_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Mux45~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~19_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux45~18_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux31~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~18_combout\,
	datab => \Mux31~3_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux45~19_combout\);

-- Location: LCCOMB_X22_Y25_N2
\Mux45~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~12_combout\ = (((\Add2~6_combout\) # (\Add2~8_combout\)) # (!\Mux38~0_combout\)) # (!\hvsync_gen|local_vpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux38~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux45~12_combout\);

-- Location: LCCOMB_X22_Y25_N20
\Mux45~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~13_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux45~12_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux45~12_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux45~13_combout\);

-- Location: LCCOMB_X22_Y25_N8
\Mux45~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~20_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux45~17_combout\ & (\Mux45~19_combout\)) # (!\Mux45~17_combout\ & ((\Mux45~13_combout\))))) # (!\hvsync_gen|local_vpos\(1) & (\Mux45~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux45~17_combout\,
	datac => \Mux45~19_combout\,
	datad => \Mux45~13_combout\,
	combout => \Mux45~20_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Mux32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\Add2~2_combout\ & ((\Add2~6_combout\ & (!\Mux42~3_combout\)) # (!\Add2~6_combout\ & ((\Mux32~2_combout\))))) # (!\Add2~2_combout\ & (((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux32~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Mux32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (\Mux32~4_combout\) # ((!\Add2~6_combout\ & (!\Mux9~2_combout\ & !\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux9~2_combout\,
	datac => \Mux32~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X22_Y22_N2
\Mux32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (!\Add2~6_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux32~3_combout\ & ((\Add2~8_combout\) # ((!\Add2~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X20_Y22_N2
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Add2~4_combout\ & ((\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X22_Y23_N28
\Mux100~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~14_combout\ = (!\hvsync_gen|local_vpos\(4) & (\Add2~8_combout\ $ (!\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux100~14_combout\);

-- Location: LCCOMB_X22_Y22_N26
\Mux45~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~44_combout\ = (\Mux100~14_combout\ & ((\Add2~8_combout\ & ((\Add2~4_combout\))) # (!\Add2~8_combout\ & (!\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux100~14_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux45~44_combout\);

-- Location: LCCOMB_X17_Y24_N2
\Mux25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Add2~8_combout\ & !\Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datac => \Add2~4_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X17_Y23_N22
\Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (!\Add2~8_combout\ & (\Add2~4_combout\ & ((!\hvsync_gen|local_hpos\(0)) # (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X17_Y24_N20
\Mux25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Add2~2_combout\ & ((\Add2~6_combout\ & (!\Mux25~2_combout\)) # (!\Add2~6_combout\ & ((!\Mux25~1_combout\))))) # (!\Add2~2_combout\ & (((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux25~1_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X22_Y22_N6
\Mux45~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~21_combout\ = (\Mux45~44_combout\) # ((\hvsync_gen|local_vpos\(4) & ((\Mux25~0_combout\) # (\Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux25~0_combout\,
	datac => \Mux45~44_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux45~21_combout\);

-- Location: LCCOMB_X21_Y22_N2
\Mux45~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~22_combout\ = (\hvsync_gen|local_vpos\(5) & (((\Mux45~21_combout\)))) # (!\hvsync_gen|local_vpos\(5) & ((\Mux32~6_combout\) # ((!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux32~6_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux45~21_combout\,
	combout => \Mux45~22_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Mux25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux25~3_combout\) # ((\Mux32~3_combout\ & ((!\Mux3~0_combout\) # (!\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux25~3_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X17_Y22_N20
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = \Add2~4_combout\ $ (((\Add2~8_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X17_Y22_N30
\Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Add2~6_combout\ & (((\Add2~2_combout\)) # (!\Mux9~2_combout\))) # (!\Add2~6_combout\ & (((!\Mux9~3_combout\ & !\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux9~3_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X17_Y22_N0
\Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & ((\Mux9~1_combout\) # ((!\Add2~2_combout\)))) # (!\Mux9~4_combout\ & (((\Mux9~0_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux9~0_combout\,
	datac => \Mux9~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X21_Y22_N4
\Mux45~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~49_combout\ = (\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux25~4_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux25~4_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux9~5_combout\,
	combout => \Mux45~49_combout\);

-- Location: LCCOMB_X21_Y22_N30
\Mux45~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~50_combout\ = (\hvsync_gen|local_vpos\(1) & (\Mux45~22_combout\ & ((\hvsync_gen|local_vpos\(2))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux45~49_combout\ & !\hvsync_gen|local_vpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux45~22_combout\,
	datac => \Mux45~49_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux45~50_combout\);

-- Location: LCCOMB_X17_Y23_N8
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Add2~4_combout\ & (\Add2~2_combout\ $ (((!\Add2~0_combout\) # (!\hvsync_gen|local_hpos\(0)))))) # (!\Add2~4_combout\ & ((\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X21_Y22_N10
\Mux45~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~46_combout\ = (\Add2~8_combout\ & ((\Add2~4_combout\ $ (\Add2~2_combout\)))) # (!\Add2~8_combout\ & (!\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux45~46_combout\);

-- Location: LCCOMB_X21_Y22_N18
\Mux45~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~31_combout\ = (\Mux45~46_combout\ & (\Mux100~14_combout\ & (\hvsync_gen|local_vpos\(5) & \Mux46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~46_combout\,
	datab => \Mux100~14_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux46~5_combout\,
	combout => \Mux45~31_combout\);

-- Location: LCCOMB_X19_Y22_N12
\Mux45~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~47_combout\ = (\hvsync_gen|local_vpos\(5)) # ((\hvsync_gen|local_vpos\(1) & \hvsync_gen|local_vpos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux45~47_combout\);

-- Location: LCCOMB_X17_Y23_N2
\Mux45~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~32_combout\ = (\Add2~2_combout\) # ((!\Add2~8_combout\ & (\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux45~32_combout\);

-- Location: LCCOMB_X19_Y22_N8
\Mux45~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~33_combout\ = (\Add2~4_combout\ & (!\Add2~8_combout\ & (\Mux45~32_combout\ & !\Add2~6_combout\))) # (!\Add2~4_combout\ & (\Add2~6_combout\ & (\Add2~8_combout\ $ (!\Mux45~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux45~32_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux45~33_combout\);

-- Location: LCCOMB_X19_Y22_N10
\Mux45~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~34_combout\ = (\Mux45~47_combout\ & (\Mux46~5_combout\ & (!\Mux45~33_combout\))) # (!\Mux45~47_combout\ & ((\Mux46~5_combout\) # ((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~47_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux45~33_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux45~34_combout\);

-- Location: LCCOMB_X21_Y22_N20
\Mux45~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~35_combout\ = (\Mux45~50_combout\) # ((\Mux45~31_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux45~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~50_combout\,
	datab => \Mux45~31_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux45~34_combout\,
	combout => \Mux45~35_combout\);

-- Location: LCCOMB_X21_Y22_N22
\Mux45~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~29_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux25~4_combout\ & (\hvsync_gen|local_vpos\(5)))) # (!\hvsync_gen|local_vpos\(4) & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux25~4_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux19~3_combout\,
	combout => \Mux45~29_combout\);

-- Location: LCCOMB_X21_Y22_N12
\Mux45~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~23_combout\ = (\Mux46~10_combout\ & ((\hvsync_gen|local_vpos\(4)) # ((\hvsync_gen|local_vpos\(5)) # (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~10_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux2~2_combout\,
	combout => \Mux45~23_combout\);

-- Location: LCCOMB_X21_Y22_N14
\Mux45~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~24_combout\ = (\Mux45~23_combout\ & (((\Mux25~4_combout\) # (\hvsync_gen|local_vpos\(4))) # (!\hvsync_gen|local_vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux25~4_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux45~23_combout\,
	combout => \Mux45~24_combout\);

-- Location: LCCOMB_X21_Y22_N0
\Mux45~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~25_combout\ = ((\hvsync_gen|local_vpos\(5) & ((\Mux34~1_combout\) # (\Mux27~1_combout\)))) # (!\hvsync_gen|local_vpos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux34~1_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux27~1_combout\,
	combout => \Mux45~25_combout\);

-- Location: LCCOMB_X21_Y22_N26
\Mux45~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~26_combout\ = (\Mux45~25_combout\) # ((!\hvsync_gen|local_vpos\(5) & \Mux9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux45~25_combout\,
	datac => \Mux9~5_combout\,
	combout => \Mux45~26_combout\);

-- Location: LCCOMB_X21_Y22_N28
\Mux45~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~27_combout\ = (\Mux46~11_combout\ & ((\Mux45~22_combout\) # ((\Mux45~24_combout\ & \Mux45~26_combout\)))) # (!\Mux46~11_combout\ & (\Mux45~24_combout\ & (\Mux45~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux45~24_combout\,
	datac => \Mux45~26_combout\,
	datad => \Mux45~22_combout\,
	combout => \Mux45~27_combout\);

-- Location: LCCOMB_X22_Y23_N6
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = \Add2~6_combout\ $ (\Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = \Add2~4_combout\ $ (((\Add2~2_combout\) # ((\Add2~0_combout\ & \hvsync_gen|local_hpos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y25_N4
\Mux45~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~45_combout\ = (\Add2~8_combout\ & (((!\Add2~2_combout\)) # (!\Add2~4_combout\))) # (!\Add2~8_combout\ & (((!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux45~45_combout\);

-- Location: LCCOMB_X22_Y23_N8
\Mux45~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~28_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux3~4_combout\) # ((\Mux45~45_combout\) # (!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux45~45_combout\,
	combout => \Mux45~28_combout\);

-- Location: LCCOMB_X21_Y22_N8
\Mux45~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~30_combout\ = (\Mux45~27_combout\) # ((\Mux46~5_combout\ & ((\Mux45~29_combout\) # (\Mux45~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~29_combout\,
	datab => \Mux45~27_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux45~28_combout\,
	combout => \Mux45~30_combout\);

-- Location: LCCOMB_X21_Y22_N6
\Mux45~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~36_combout\ = (\hvsync_gen|local_vpos\(3) & (((\Mux45~30_combout\) # (\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(3) & (\Mux45~35_combout\ & ((!\hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~35_combout\,
	datab => \Mux45~30_combout\,
	datac => \hvsync_gen|local_vpos\(3),
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux45~36_combout\);

-- Location: LCCOMB_X22_Y25_N10
\Mux45~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~37_combout\ = (\hvsync_gen|local_vpos\(1) & (\hvsync_gen|local_vpos\(0))) # (!\hvsync_gen|local_vpos\(1) & ((\Mux40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux40~2_combout\,
	combout => \Mux45~37_combout\);

-- Location: LCCOMB_X22_Y25_N14
\Mux45~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~39_combout\ = (\hvsync_gen|local_vpos\(1) & (\Mux45~37_combout\ & ((\hvsync_gen|local_vpos\(2))))) # (!\hvsync_gen|local_vpos\(1) & (((\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~37_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux45~39_combout\);

-- Location: LCCOMB_X20_Y25_N18
\Mux34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Add2~8_combout\) # ((\Add2~6_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~6_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X20_Y25_N8
\Mux34~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (!\Add2~8_combout\ & (\hvsync_gen|local_hpos\(0) & (!\Add2~6_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~6_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X20_Y25_N28
\Mux34~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Add2~4_combout\ & (((\Add2~2_combout\) # (!\Mux34~3_combout\)))) # (!\Add2~4_combout\ & (!\Mux34~4_combout\ & ((!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux34~4_combout\,
	datac => \Mux34~3_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X19_Y25_N4
\Mux34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Add2~8_combout\ & (!\Add2~6_combout\)) # (!\Add2~8_combout\ & (((\Add2~0_combout\ & \hvsync_gen|local_hpos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X19_Y25_N30
\Mux34~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\Mux34~5_combout\ & ((\Mux34~1_combout\) # ((!\Add2~2_combout\)))) # (!\Mux34~5_combout\ & (((\Mux34~2_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux34~5_combout\,
	datac => \Mux34~2_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux34~6_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Mux45~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~38_combout\ = (\hvsync_gen|local_vpos\(2) & ((\hvsync_gen|local_vpos\(1) & (!\Mux45~37_combout\)) # (!\hvsync_gen|local_vpos\(1) & ((!\hvsync_gen|local_vpos\(4)))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux45~37_combout\ & (\hvsync_gen|local_vpos\(4) 
-- $ (\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~37_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux45~38_combout\);

-- Location: LCCOMB_X22_Y25_N16
\Mux45~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~40_combout\ = (\Mux45~39_combout\ & ((!\Mux45~38_combout\))) # (!\Mux45~39_combout\ & (\Mux34~6_combout\ & \Mux45~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux45~39_combout\,
	datac => \Mux34~6_combout\,
	datad => \Mux45~38_combout\,
	combout => \Mux45~40_combout\);

-- Location: LCCOMB_X22_Y25_N22
\Mux45~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~48_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0)) # ((!\Mux40~2_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (((\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux31~3_combout\,
	datad => \Mux40~2_combout\,
	combout => \Mux45~48_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Mux45~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~41_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux45~40_combout\) # ((\Mux45~48_combout\ & !\Mux45~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux45~40_combout\,
	datac => \Mux45~48_combout\,
	datad => \Mux45~38_combout\,
	combout => \Mux45~41_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Mux45~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~42_combout\ = (\Mux45~36_combout\ & (((\Mux45~41_combout\) # (!\hvsync_gen|local_vpos\(6))))) # (!\Mux45~36_combout\ & (\Mux45~20_combout\ & (\hvsync_gen|local_vpos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~20_combout\,
	datab => \Mux45~36_combout\,
	datac => \hvsync_gen|local_vpos\(6),
	datad => \Mux45~41_combout\,
	combout => \Mux45~42_combout\);

-- Location: LCCOMB_X23_Y20_N18
\rgb_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~2_combout\ = ((\hvsync_gen|display_on~1_combout\ & (\Mux45~42_combout\ & \process_1~3_combout\))) # (!\rgb_r~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|display_on~1_combout\,
	datab => \Mux45~42_combout\,
	datac => \rgb_r~0_combout\,
	datad => \process_1~3_combout\,
	combout => \rgb_r~2_combout\);

-- Location: FF_X23_Y20_N19
\rgb_r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_r[1]~reg0_q\);

-- Location: LCCOMB_X23_Y18_N2
\track_obstacle_inst|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~0_combout\ = (\hvsync_gen|local_hpos\(4) & (((\hvsync_gen|local_hpos\(2) & \hvsync_gen|local_hpos\(1))))) # (!\hvsync_gen|local_hpos\(4) & ((\hvsync_gen|local_hpos\(2)) # ((\hvsync_gen|local_hpos\(0) & 
-- \hvsync_gen|local_hpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \hvsync_gen|local_hpos\(0),
	datac => \hvsync_gen|local_hpos\(2),
	datad => \hvsync_gen|local_hpos\(1),
	combout => \track_obstacle_inst|process_1~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\track_obstacle_inst|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~1_combout\ = (!\hvsync_gen|local_hpos\(7) & (\hvsync_gen|local_hpos\(8) & !\hvsync_gen|local_hpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datab => \hvsync_gen|local_hpos\(8),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \track_obstacle_inst|process_1~1_combout\);

-- Location: LCCOMB_X23_Y19_N24
\track_obstacle_inst|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~2_combout\ = (\track_obstacle_inst|process_1~1_combout\ & ((\hvsync_gen|local_hpos\(5) & (\hvsync_gen|local_hpos\(4) & !\hvsync_gen|local_hpos\(6))) # (!\hvsync_gen|local_hpos\(5) & (!\hvsync_gen|local_hpos\(4) & 
-- \hvsync_gen|local_hpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \hvsync_gen|local_hpos\(4),
	datac => \hvsync_gen|local_hpos\(6),
	datad => \track_obstacle_inst|process_1~1_combout\,
	combout => \track_obstacle_inst|process_1~2_combout\);

-- Location: LCCOMB_X23_Y18_N28
\track_obstacle_inst|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~3_combout\ = ((\hvsync_gen|local_hpos\(3) & (\track_obstacle_inst|process_1~0_combout\ & !\hvsync_gen|local_hpos\(5))) # (!\hvsync_gen|local_hpos\(3) & (!\track_obstacle_inst|process_1~0_combout\ & 
-- \hvsync_gen|local_hpos\(5)))) # (!\track_obstacle_inst|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \track_obstacle_inst|process_1~0_combout\,
	datac => \hvsync_gen|local_hpos\(5),
	datad => \track_obstacle_inst|process_1~2_combout\,
	combout => \track_obstacle_inst|process_1~3_combout\);

-- Location: LCCOMB_X22_Y17_N8
\track_obstacle_inst|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~0_combout\ = \track_obstacle_inst|obstacle_x[0][3]~26_combout\ $ (VCC)
-- \track_obstacle_inst|Add7~1\ = CARRY(\track_obstacle_inst|obstacle_x[0][3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datad => VCC,
	combout => \track_obstacle_inst|Add7~0_combout\,
	cout => \track_obstacle_inst|Add7~1\);

-- Location: LCCOMB_X22_Y17_N10
\track_obstacle_inst|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~2_combout\ = (\track_obstacle_inst|obstacle_x[0][4]~22_combout\ & (!\track_obstacle_inst|Add7~1\)) # (!\track_obstacle_inst|obstacle_x[0][4]~22_combout\ & ((\track_obstacle_inst|Add7~1\) # (GND)))
-- \track_obstacle_inst|Add7~3\ = CARRY((!\track_obstacle_inst|Add7~1\) # (!\track_obstacle_inst|obstacle_x[0][4]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][4]~22_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Add7~1\,
	combout => \track_obstacle_inst|Add7~2_combout\,
	cout => \track_obstacle_inst|Add7~3\);

-- Location: LCCOMB_X22_Y17_N12
\track_obstacle_inst|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~4_combout\ = (\track_obstacle_inst|obstacle_x[0][5]~18_combout\ & ((GND) # (!\track_obstacle_inst|Add7~3\))) # (!\track_obstacle_inst|obstacle_x[0][5]~18_combout\ & (\track_obstacle_inst|Add7~3\ $ (GND)))
-- \track_obstacle_inst|Add7~5\ = CARRY((\track_obstacle_inst|obstacle_x[0][5]~18_combout\) # (!\track_obstacle_inst|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][5]~18_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Add7~3\,
	combout => \track_obstacle_inst|Add7~4_combout\,
	cout => \track_obstacle_inst|Add7~5\);

-- Location: LCCOMB_X22_Y17_N14
\track_obstacle_inst|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~6_combout\ = (\track_obstacle_inst|obstacle_x[0][6]~14_combout\ & (!\track_obstacle_inst|Add7~5\)) # (!\track_obstacle_inst|obstacle_x[0][6]~14_combout\ & ((\track_obstacle_inst|Add7~5\) # (GND)))
-- \track_obstacle_inst|Add7~7\ = CARRY((!\track_obstacle_inst|Add7~5\) # (!\track_obstacle_inst|obstacle_x[0][6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][6]~14_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Add7~5\,
	combout => \track_obstacle_inst|Add7~6_combout\,
	cout => \track_obstacle_inst|Add7~7\);

-- Location: LCCOMB_X22_Y17_N16
\track_obstacle_inst|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~8_combout\ = (\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & (\track_obstacle_inst|Add7~7\ $ (GND))) # (!\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & (!\track_obstacle_inst|Add7~7\ & VCC))
-- \track_obstacle_inst|Add7~9\ = CARRY((\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & !\track_obstacle_inst|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][7]~10_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Add7~7\,
	combout => \track_obstacle_inst|Add7~8_combout\,
	cout => \track_obstacle_inst|Add7~9\);

-- Location: LCCOMB_X22_Y17_N18
\track_obstacle_inst|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~10_combout\ = (\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & (!\track_obstacle_inst|Add7~9\)) # (!\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & ((\track_obstacle_inst|Add7~9\) # (GND)))
-- \track_obstacle_inst|Add7~11\ = CARRY((!\track_obstacle_inst|Add7~9\) # (!\track_obstacle_inst|obstacle_x[0][8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][8]~6_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Add7~9\,
	combout => \track_obstacle_inst|Add7~10_combout\,
	cout => \track_obstacle_inst|Add7~11\);

-- Location: LCCOMB_X22_Y17_N20
\track_obstacle_inst|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~12_combout\ = \track_obstacle_inst|obstacle_x[0][9]~2_combout\ $ (!\track_obstacle_inst|Add7~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][9]~2_combout\,
	cin => \track_obstacle_inst|Add7~11\,
	combout => \track_obstacle_inst|Add7~12_combout\);

-- Location: LCCOMB_X23_Y17_N10
\track_obstacle_inst|LessThan25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~1_cout\ = CARRY((!\hvsync_gen|local_hpos\(0) & \track_obstacle_inst|obstacle_x[0][0]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datad => VCC,
	cout => \track_obstacle_inst|LessThan25~1_cout\);

-- Location: LCCOMB_X23_Y17_N12
\track_obstacle_inst|LessThan25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~3_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][1]~34_combout\ & (\hvsync_gen|local_hpos\(1) & !\track_obstacle_inst|LessThan25~1_cout\)) # (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\ & 
-- ((\hvsync_gen|local_hpos\(1)) # (!\track_obstacle_inst|LessThan25~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datab => \hvsync_gen|local_hpos\(1),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~1_cout\,
	cout => \track_obstacle_inst|LessThan25~3_cout\);

-- Location: LCCOMB_X23_Y17_N14
\track_obstacle_inst|LessThan25~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~5_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][2]~30_combout\ & ((!\track_obstacle_inst|LessThan25~3_cout\) # (!\hvsync_gen|local_hpos\(2)))) # (!\track_obstacle_inst|obstacle_x[0][2]~30_combout\ & 
-- (!\hvsync_gen|local_hpos\(2) & !\track_obstacle_inst|LessThan25~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datab => \hvsync_gen|local_hpos\(2),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~3_cout\,
	cout => \track_obstacle_inst|LessThan25~5_cout\);

-- Location: LCCOMB_X23_Y17_N16
\track_obstacle_inst|LessThan25~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~7_cout\ = CARRY((\hvsync_gen|local_hpos\(3) & ((!\track_obstacle_inst|LessThan25~5_cout\) # (!\track_obstacle_inst|Add7~0_combout\))) # (!\hvsync_gen|local_hpos\(3) & (!\track_obstacle_inst|Add7~0_combout\ & 
-- !\track_obstacle_inst|LessThan25~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \track_obstacle_inst|Add7~0_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~5_cout\,
	cout => \track_obstacle_inst|LessThan25~7_cout\);

-- Location: LCCOMB_X23_Y17_N18
\track_obstacle_inst|LessThan25~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~9_cout\ = CARRY((\hvsync_gen|local_hpos\(4) & (\track_obstacle_inst|Add7~2_combout\ & !\track_obstacle_inst|LessThan25~7_cout\)) # (!\hvsync_gen|local_hpos\(4) & ((\track_obstacle_inst|Add7~2_combout\) # 
-- (!\track_obstacle_inst|LessThan25~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \track_obstacle_inst|Add7~2_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~7_cout\,
	cout => \track_obstacle_inst|LessThan25~9_cout\);

-- Location: LCCOMB_X23_Y17_N20
\track_obstacle_inst|LessThan25~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~11_cout\ = CARRY((\track_obstacle_inst|Add7~4_combout\ & (\hvsync_gen|local_hpos\(5) & !\track_obstacle_inst|LessThan25~9_cout\)) # (!\track_obstacle_inst|Add7~4_combout\ & ((\hvsync_gen|local_hpos\(5)) # 
-- (!\track_obstacle_inst|LessThan25~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add7~4_combout\,
	datab => \hvsync_gen|local_hpos\(5),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~9_cout\,
	cout => \track_obstacle_inst|LessThan25~11_cout\);

-- Location: LCCOMB_X23_Y17_N22
\track_obstacle_inst|LessThan25~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~13_cout\ = CARRY((\track_obstacle_inst|Add7~6_combout\ & ((!\track_obstacle_inst|LessThan25~11_cout\) # (!\hvsync_gen|local_hpos\(6)))) # (!\track_obstacle_inst|Add7~6_combout\ & (!\hvsync_gen|local_hpos\(6) & 
-- !\track_obstacle_inst|LessThan25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add7~6_combout\,
	datab => \hvsync_gen|local_hpos\(6),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~11_cout\,
	cout => \track_obstacle_inst|LessThan25~13_cout\);

-- Location: LCCOMB_X23_Y17_N24
\track_obstacle_inst|LessThan25~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~15_cout\ = CARRY((\hvsync_gen|local_hpos\(7) & ((!\track_obstacle_inst|LessThan25~13_cout\) # (!\track_obstacle_inst|Add7~8_combout\))) # (!\hvsync_gen|local_hpos\(7) & (!\track_obstacle_inst|Add7~8_combout\ & 
-- !\track_obstacle_inst|LessThan25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datab => \track_obstacle_inst|Add7~8_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~13_cout\,
	cout => \track_obstacle_inst|LessThan25~15_cout\);

-- Location: LCCOMB_X23_Y17_N26
\track_obstacle_inst|LessThan25~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~17_cout\ = CARRY((\hvsync_gen|local_hpos\(8) & (\track_obstacle_inst|Add7~10_combout\ & !\track_obstacle_inst|LessThan25~15_cout\)) # (!\hvsync_gen|local_hpos\(8) & ((\track_obstacle_inst|Add7~10_combout\) # 
-- (!\track_obstacle_inst|LessThan25~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(8),
	datab => \track_obstacle_inst|Add7~10_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~15_cout\,
	cout => \track_obstacle_inst|LessThan25~17_cout\);

-- Location: LCCOMB_X23_Y17_N28
\track_obstacle_inst|LessThan25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~18_combout\ = (\hvsync_gen|local_hpos\(9) & (\track_obstacle_inst|LessThan25~17_cout\ & \track_obstacle_inst|Add7~12_combout\)) # (!\hvsync_gen|local_hpos\(9) & ((\track_obstacle_inst|LessThan25~17_cout\) # 
-- (\track_obstacle_inst|Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(9),
	datad => \track_obstacle_inst|Add7~12_combout\,
	cin => \track_obstacle_inst|LessThan25~17_cout\,
	combout => \track_obstacle_inst|LessThan25~18_combout\);

-- Location: LCCOMB_X23_Y19_N18
\track_obstacle_inst|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~4_combout\ = (\hvsync_gen|local_hpos\(6)) # ((\hvsync_gen|local_hpos\(9) & ((\hvsync_gen|local_hpos\(7)) # (\hvsync_gen|local_hpos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datab => \hvsync_gen|local_hpos\(8),
	datac => \hvsync_gen|local_hpos\(6),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \track_obstacle_inst|process_1~4_combout\);

-- Location: LCCOMB_X23_Y18_N30
\track_obstacle_inst|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~5_combout\ = (\hvsync_gen|local_hpos\(3)) # ((\hvsync_gen|local_hpos\(0)) # ((\hvsync_gen|local_hpos\(2)) # (\hvsync_gen|local_hpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \hvsync_gen|local_hpos\(0),
	datac => \hvsync_gen|local_hpos\(2),
	datad => \hvsync_gen|local_hpos\(1),
	combout => \track_obstacle_inst|process_1~5_combout\);

-- Location: LCCOMB_X23_Y19_N28
\track_obstacle_inst|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~6_combout\ = (\hvsync_gen|local_hpos\(5) & ((\track_obstacle_inst|process_1~4_combout\) # ((\hvsync_gen|local_hpos\(4) & \track_obstacle_inst|process_1~5_combout\)))) # (!\hvsync_gen|local_hpos\(5) & 
-- (\track_obstacle_inst|process_1~4_combout\ & (\hvsync_gen|local_hpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \track_obstacle_inst|process_1~4_combout\,
	datac => \hvsync_gen|local_hpos\(4),
	datad => \track_obstacle_inst|process_1~5_combout\,
	combout => \track_obstacle_inst|process_1~6_combout\);

-- Location: LCCOMB_X23_Y19_N22
\track_obstacle_inst|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~7_combout\ = (\hvsync_gen|local_hpos\(9) & ((\track_obstacle_inst|process_1~4_combout\) # ((\track_obstacle_inst|process_1~6_combout\)))) # (!\hvsync_gen|local_hpos\(9) & (\hvsync_gen|display_on~0_combout\ & 
-- ((!\track_obstacle_inst|process_1~6_combout\) # (!\track_obstacle_inst|process_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(9),
	datab => \track_obstacle_inst|process_1~4_combout\,
	datac => \hvsync_gen|display_on~0_combout\,
	datad => \track_obstacle_inst|process_1~6_combout\,
	combout => \track_obstacle_inst|process_1~7_combout\);

-- Location: LCCOMB_X23_Y24_N0
\track_obstacle_inst|LessThan26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~1_cout\ = CARRY((!\hvsync_gen|local_vpos\(0) & \track_obstacle_inst|obstacle_y[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \track_obstacle_inst|obstacle_y[0][0]~q\,
	datad => VCC,
	cout => \track_obstacle_inst|LessThan26~1_cout\);

-- Location: LCCOMB_X23_Y24_N2
\track_obstacle_inst|LessThan26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~3_cout\ = CARRY((\hvsync_gen|local_vpos\(1) & ((!\track_obstacle_inst|LessThan26~1_cout\) # (!\track_obstacle_inst|obstacle_y[0][1]~q\))) # (!\hvsync_gen|local_vpos\(1) & (!\track_obstacle_inst|obstacle_y[0][1]~q\ & 
-- !\track_obstacle_inst|LessThan26~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \track_obstacle_inst|obstacle_y[0][1]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~1_cout\,
	cout => \track_obstacle_inst|LessThan26~3_cout\);

-- Location: LCCOMB_X23_Y24_N4
\track_obstacle_inst|LessThan26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~5_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][2]~q\ & ((!\track_obstacle_inst|LessThan26~3_cout\) # (!\hvsync_gen|local_vpos\(2)))) # (!\track_obstacle_inst|obstacle_y[0][2]~q\ & (!\hvsync_gen|local_vpos\(2) & 
-- !\track_obstacle_inst|LessThan26~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][2]~q\,
	datab => \hvsync_gen|local_vpos\(2),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~3_cout\,
	cout => \track_obstacle_inst|LessThan26~5_cout\);

-- Location: LCCOMB_X23_Y24_N6
\track_obstacle_inst|LessThan26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~7_cout\ = CARRY((\hvsync_gen|local_vpos\(3) & ((!\track_obstacle_inst|LessThan26~5_cout\) # (!\track_obstacle_inst|obstacle_y[0][3]~q\))) # (!\hvsync_gen|local_vpos\(3) & (!\track_obstacle_inst|obstacle_y[0][3]~q\ & 
-- !\track_obstacle_inst|LessThan26~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \track_obstacle_inst|obstacle_y[0][3]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~5_cout\,
	cout => \track_obstacle_inst|LessThan26~7_cout\);

-- Location: LCCOMB_X23_Y24_N8
\track_obstacle_inst|LessThan26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~9_cout\ = CARRY((\hvsync_gen|local_vpos\(4) & (\track_obstacle_inst|obstacle_y[0][4]~q\ & !\track_obstacle_inst|LessThan26~7_cout\)) # (!\hvsync_gen|local_vpos\(4) & ((\track_obstacle_inst|obstacle_y[0][4]~q\) # 
-- (!\track_obstacle_inst|LessThan26~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~7_cout\,
	cout => \track_obstacle_inst|LessThan26~9_cout\);

-- Location: LCCOMB_X23_Y24_N10
\track_obstacle_inst|LessThan26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~11_cout\ = CARRY((\hvsync_gen|local_vpos\(5) & ((!\track_obstacle_inst|LessThan26~9_cout\) # (!\track_obstacle_inst|obstacle_y[0][5]~q\))) # (!\hvsync_gen|local_vpos\(5) & (!\track_obstacle_inst|obstacle_y[0][5]~q\ & 
-- !\track_obstacle_inst|LessThan26~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~9_cout\,
	cout => \track_obstacle_inst|LessThan26~11_cout\);

-- Location: LCCOMB_X23_Y24_N12
\track_obstacle_inst|LessThan26~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~13_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][6]~q\ & ((!\track_obstacle_inst|LessThan26~11_cout\) # (!\hvsync_gen|local_vpos\(6)))) # (!\track_obstacle_inst|obstacle_y[0][6]~q\ & (!\hvsync_gen|local_vpos\(6) & 
-- !\track_obstacle_inst|LessThan26~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][6]~q\,
	datab => \hvsync_gen|local_vpos\(6),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~11_cout\,
	cout => \track_obstacle_inst|LessThan26~13_cout\);

-- Location: LCCOMB_X23_Y24_N14
\track_obstacle_inst|LessThan26~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~15_cout\ = CARRY((\hvsync_gen|local_vpos\(7) & ((!\track_obstacle_inst|LessThan26~13_cout\) # (!\track_obstacle_inst|obstacle_y[0][7]~q\))) # (!\hvsync_gen|local_vpos\(7) & (!\track_obstacle_inst|obstacle_y[0][7]~q\ & 
-- !\track_obstacle_inst|LessThan26~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(7),
	datab => \track_obstacle_inst|obstacle_y[0][7]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~13_cout\,
	cout => \track_obstacle_inst|LessThan26~15_cout\);

-- Location: LCCOMB_X23_Y24_N16
\track_obstacle_inst|LessThan26~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~17_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][8]~q\ & ((!\track_obstacle_inst|LessThan26~15_cout\) # (!\hvsync_gen|local_vpos\(8)))) # (!\track_obstacle_inst|obstacle_y[0][8]~q\ & (!\hvsync_gen|local_vpos\(8) & 
-- !\track_obstacle_inst|LessThan26~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][8]~q\,
	datab => \hvsync_gen|local_vpos\(8),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~15_cout\,
	cout => \track_obstacle_inst|LessThan26~17_cout\);

-- Location: LCCOMB_X23_Y24_N18
\track_obstacle_inst|LessThan26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~18_combout\ = (\hvsync_gen|local_vpos\(9) & (\track_obstacle_inst|LessThan26~17_cout\ & \track_obstacle_inst|obstacle_y[0][9]~q\)) # (!\hvsync_gen|local_vpos\(9) & ((\track_obstacle_inst|LessThan26~17_cout\) # 
-- (\track_obstacle_inst|obstacle_y[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(9),
	datad => \track_obstacle_inst|obstacle_y[0][9]~q\,
	cin => \track_obstacle_inst|LessThan26~17_cout\,
	combout => \track_obstacle_inst|LessThan26~18_combout\);

-- Location: LCCOMB_X23_Y25_N6
\track_obstacle_inst|LessThan27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~1_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][0]~q\ & !\hvsync_gen|local_vpos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][0]~q\,
	datab => \hvsync_gen|local_vpos\(0),
	datad => VCC,
	cout => \track_obstacle_inst|LessThan27~1_cout\);

-- Location: LCCOMB_X23_Y25_N8
\track_obstacle_inst|LessThan27~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~3_cout\ = CARRY((\hvsync_gen|local_vpos\(1) & ((!\track_obstacle_inst|LessThan27~1_cout\) # (!\track_obstacle_inst|obstacle_y[0][1]~q\))) # (!\hvsync_gen|local_vpos\(1) & (!\track_obstacle_inst|obstacle_y[0][1]~q\ & 
-- !\track_obstacle_inst|LessThan27~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \track_obstacle_inst|obstacle_y[0][1]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~1_cout\,
	cout => \track_obstacle_inst|LessThan27~3_cout\);

-- Location: LCCOMB_X23_Y25_N10
\track_obstacle_inst|LessThan27~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~5_cout\ = CARRY((\hvsync_gen|local_vpos\(2) & (\track_obstacle_inst|obstacle_y[0][2]~q\ & !\track_obstacle_inst|LessThan27~3_cout\)) # (!\hvsync_gen|local_vpos\(2) & ((\track_obstacle_inst|obstacle_y[0][2]~q\) # 
-- (!\track_obstacle_inst|LessThan27~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \track_obstacle_inst|obstacle_y[0][2]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~3_cout\,
	cout => \track_obstacle_inst|LessThan27~5_cout\);

-- Location: LCCOMB_X23_Y25_N12
\track_obstacle_inst|LessThan27~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~7_cout\ = CARRY((\track_obstacle_inst|Add8~0_combout\ & (\hvsync_gen|local_vpos\(3) & !\track_obstacle_inst|LessThan27~5_cout\)) # (!\track_obstacle_inst|Add8~0_combout\ & ((\hvsync_gen|local_vpos\(3)) # 
-- (!\track_obstacle_inst|LessThan27~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~0_combout\,
	datab => \hvsync_gen|local_vpos\(3),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~5_cout\,
	cout => \track_obstacle_inst|LessThan27~7_cout\);

-- Location: LCCOMB_X23_Y25_N14
\track_obstacle_inst|LessThan27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~9_cout\ = CARRY((\hvsync_gen|local_vpos\(4) & (\track_obstacle_inst|Add8~2_combout\ & !\track_obstacle_inst|LessThan27~7_cout\)) # (!\hvsync_gen|local_vpos\(4) & ((\track_obstacle_inst|Add8~2_combout\) # 
-- (!\track_obstacle_inst|LessThan27~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \track_obstacle_inst|Add8~2_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~7_cout\,
	cout => \track_obstacle_inst|LessThan27~9_cout\);

-- Location: LCCOMB_X23_Y25_N16
\track_obstacle_inst|LessThan27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~11_cout\ = CARRY((\hvsync_gen|local_vpos\(5) & ((!\track_obstacle_inst|LessThan27~9_cout\) # (!\track_obstacle_inst|Add8~4_combout\))) # (!\hvsync_gen|local_vpos\(5) & (!\track_obstacle_inst|Add8~4_combout\ & 
-- !\track_obstacle_inst|LessThan27~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \track_obstacle_inst|Add8~4_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~9_cout\,
	cout => \track_obstacle_inst|LessThan27~11_cout\);

-- Location: LCCOMB_X23_Y25_N18
\track_obstacle_inst|LessThan27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~13_cout\ = CARRY((\track_obstacle_inst|Add8~6_combout\ & ((!\track_obstacle_inst|LessThan27~11_cout\) # (!\hvsync_gen|local_vpos\(6)))) # (!\track_obstacle_inst|Add8~6_combout\ & (!\hvsync_gen|local_vpos\(6) & 
-- !\track_obstacle_inst|LessThan27~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~6_combout\,
	datab => \hvsync_gen|local_vpos\(6),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~11_cout\,
	cout => \track_obstacle_inst|LessThan27~13_cout\);

-- Location: LCCOMB_X23_Y25_N20
\track_obstacle_inst|LessThan27~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~15_cout\ = CARRY((\track_obstacle_inst|Add8~8_combout\ & (\hvsync_gen|local_vpos\(7) & !\track_obstacle_inst|LessThan27~13_cout\)) # (!\track_obstacle_inst|Add8~8_combout\ & ((\hvsync_gen|local_vpos\(7)) # 
-- (!\track_obstacle_inst|LessThan27~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~8_combout\,
	datab => \hvsync_gen|local_vpos\(7),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~13_cout\,
	cout => \track_obstacle_inst|LessThan27~15_cout\);

-- Location: LCCOMB_X23_Y25_N22
\track_obstacle_inst|LessThan27~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~17_cout\ = CARRY((\hvsync_gen|local_vpos\(8) & (\track_obstacle_inst|Add8~10_combout\ & !\track_obstacle_inst|LessThan27~15_cout\)) # (!\hvsync_gen|local_vpos\(8) & ((\track_obstacle_inst|Add8~10_combout\) # 
-- (!\track_obstacle_inst|LessThan27~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(8),
	datab => \track_obstacle_inst|Add8~10_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~15_cout\,
	cout => \track_obstacle_inst|LessThan27~17_cout\);

-- Location: LCCOMB_X23_Y25_N24
\track_obstacle_inst|LessThan27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~18_combout\ = (\hvsync_gen|local_vpos\(9) & (\track_obstacle_inst|LessThan27~17_cout\ & \track_obstacle_inst|Add8~12_combout\)) # (!\hvsync_gen|local_vpos\(9) & ((\track_obstacle_inst|LessThan27~17_cout\) # 
-- (\track_obstacle_inst|Add8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(9),
	datad => \track_obstacle_inst|Add8~12_combout\,
	cin => \track_obstacle_inst|LessThan27~17_cout\,
	combout => \track_obstacle_inst|LessThan27~18_combout\);

-- Location: LCCOMB_X23_Y25_N30
\track_obstacle_inst|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~8_combout\ = (\track_obstacle_inst|LessThan26~18_combout\) # (!\track_obstacle_inst|LessThan27~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|LessThan26~18_combout\,
	datad => \track_obstacle_inst|LessThan27~18_combout\,
	combout => \track_obstacle_inst|process_1~8_combout\);

-- Location: LCCOMB_X24_Y17_N6
\track_obstacle_inst|LessThan24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~1_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][0]~38_combout\ & !\hvsync_gen|local_hpos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datad => VCC,
	cout => \track_obstacle_inst|LessThan24~1_cout\);

-- Location: LCCOMB_X24_Y17_N8
\track_obstacle_inst|LessThan24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~3_cout\ = CARRY((\hvsync_gen|local_hpos\(1) & ((!\track_obstacle_inst|LessThan24~1_cout\) # (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\))) # (!\hvsync_gen|local_hpos\(1) & 
-- (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\ & !\track_obstacle_inst|LessThan24~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~1_cout\,
	cout => \track_obstacle_inst|LessThan24~3_cout\);

-- Location: LCCOMB_X24_Y17_N10
\track_obstacle_inst|LessThan24~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~5_cout\ = CARRY((\hvsync_gen|local_hpos\(2) & (\track_obstacle_inst|obstacle_x[0][2]~30_combout\ & !\track_obstacle_inst|LessThan24~3_cout\)) # (!\hvsync_gen|local_hpos\(2) & 
-- ((\track_obstacle_inst|obstacle_x[0][2]~30_combout\) # (!\track_obstacle_inst|LessThan24~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~3_cout\,
	cout => \track_obstacle_inst|LessThan24~5_cout\);

-- Location: LCCOMB_X24_Y17_N12
\track_obstacle_inst|LessThan24~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~7_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][3]~26_combout\ & (\hvsync_gen|local_hpos\(3) & !\track_obstacle_inst|LessThan24~5_cout\)) # (!\track_obstacle_inst|obstacle_x[0][3]~26_combout\ & 
-- ((\hvsync_gen|local_hpos\(3)) # (!\track_obstacle_inst|LessThan24~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datab => \hvsync_gen|local_hpos\(3),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~5_cout\,
	cout => \track_obstacle_inst|LessThan24~7_cout\);

-- Location: LCCOMB_X24_Y17_N14
\track_obstacle_inst|LessThan24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~9_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][4]~22_combout\ & ((!\track_obstacle_inst|LessThan24~7_cout\) # (!\hvsync_gen|local_hpos\(4)))) # (!\track_obstacle_inst|obstacle_x[0][4]~22_combout\ & 
-- (!\hvsync_gen|local_hpos\(4) & !\track_obstacle_inst|LessThan24~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][4]~22_combout\,
	datab => \hvsync_gen|local_hpos\(4),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~7_cout\,
	cout => \track_obstacle_inst|LessThan24~9_cout\);

-- Location: LCCOMB_X24_Y17_N16
\track_obstacle_inst|LessThan24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~11_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][5]~18_combout\ & (\hvsync_gen|local_hpos\(5) & !\track_obstacle_inst|LessThan24~9_cout\)) # (!\track_obstacle_inst|obstacle_x[0][5]~18_combout\ & 
-- ((\hvsync_gen|local_hpos\(5)) # (!\track_obstacle_inst|LessThan24~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][5]~18_combout\,
	datab => \hvsync_gen|local_hpos\(5),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~9_cout\,
	cout => \track_obstacle_inst|LessThan24~11_cout\);

-- Location: LCCOMB_X24_Y17_N18
\track_obstacle_inst|LessThan24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~13_cout\ = CARRY((\hvsync_gen|local_hpos\(6) & (\track_obstacle_inst|obstacle_x[0][6]~14_combout\ & !\track_obstacle_inst|LessThan24~11_cout\)) # (!\hvsync_gen|local_hpos\(6) & 
-- ((\track_obstacle_inst|obstacle_x[0][6]~14_combout\) # (!\track_obstacle_inst|LessThan24~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(6),
	datab => \track_obstacle_inst|obstacle_x[0][6]~14_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~11_cout\,
	cout => \track_obstacle_inst|LessThan24~13_cout\);

-- Location: LCCOMB_X24_Y17_N20
\track_obstacle_inst|LessThan24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~15_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & (\hvsync_gen|local_hpos\(7) & !\track_obstacle_inst|LessThan24~13_cout\)) # (!\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & 
-- ((\hvsync_gen|local_hpos\(7)) # (!\track_obstacle_inst|LessThan24~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][7]~10_combout\,
	datab => \hvsync_gen|local_hpos\(7),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~13_cout\,
	cout => \track_obstacle_inst|LessThan24~15_cout\);

-- Location: LCCOMB_X24_Y17_N22
\track_obstacle_inst|LessThan24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~17_cout\ = CARRY((\hvsync_gen|local_hpos\(8) & (\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & !\track_obstacle_inst|LessThan24~15_cout\)) # (!\hvsync_gen|local_hpos\(8) & 
-- ((\track_obstacle_inst|obstacle_x[0][8]~6_combout\) # (!\track_obstacle_inst|LessThan24~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(8),
	datab => \track_obstacle_inst|obstacle_x[0][8]~6_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~15_cout\,
	cout => \track_obstacle_inst|LessThan24~17_cout\);

-- Location: LCCOMB_X24_Y17_N24
\track_obstacle_inst|LessThan24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~18_combout\ = (\track_obstacle_inst|obstacle_x[0][9]~2_combout\ & ((\track_obstacle_inst|LessThan24~17_cout\) # (!\hvsync_gen|local_hpos\(9)))) # (!\track_obstacle_inst|obstacle_x[0][9]~2_combout\ & 
-- (\track_obstacle_inst|LessThan24~17_cout\ & !\hvsync_gen|local_hpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][9]~2_combout\,
	datad => \hvsync_gen|local_hpos\(9),
	cin => \track_obstacle_inst|LessThan24~17_cout\,
	combout => \track_obstacle_inst|LessThan24~18_combout\);

-- Location: LCCOMB_X24_Y20_N18
\track_obstacle_inst|track_color~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~12_combout\ = (\track_obstacle_inst|process_1~7_combout\) # ((\track_obstacle_inst|LessThan25~18_combout\ & (!\track_obstacle_inst|process_1~8_combout\ & !\track_obstacle_inst|LessThan24~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|LessThan25~18_combout\,
	datab => \track_obstacle_inst|process_1~7_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~12_combout\);

-- Location: LCCOMB_X24_Y20_N8
\track_obstacle_inst|track_color~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~21_combout\ = (\track_obstacle_inst|collision_detected~q\) # ((\reset~input_o\ & ((\track_obstacle_inst|track_color~12_combout\) # (!\track_obstacle_inst|process_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~3_combout\,
	datab => \track_obstacle_inst|track_color~12_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~21_combout\);

-- Location: FF_X24_Y20_N9
\track_obstacle_inst|track_color[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(10));

-- Location: LCCOMB_X22_Y22_N4
\Mux33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Add2~6_combout\ & (((\Add2~4_combout\ & \Add2~8_combout\)))) # (!\Add2~6_combout\ & (\Mux3~0_combout\ & (!\Add2~4_combout\ & !\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X22_Y22_N30
\Mux33~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Add2~2_combout\ & (!\Add2~6_combout\ & ((!\Mux32~2_combout\)))) # (!\Add2~2_combout\ & (((\Mux33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux33~2_combout\,
	datac => \Mux32~2_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X21_Y19_N8
\Mux44~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~49_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & (!\Mux20~0_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((\Mux33~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux20~0_combout\,
	datac => \Mux33~3_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux44~49_combout\);

-- Location: LCCOMB_X21_Y19_N20
\Mux44~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~47_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux40~2_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux33~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(5),
	datac => \Mux40~2_combout\,
	datad => \Mux33~3_combout\,
	combout => \Mux44~47_combout\);

-- Location: LCCOMB_X21_Y19_N10
\Mux44~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~46_combout\ = (!\hvsync_gen|local_vpos\(4) & (\Mux33~3_combout\ & !\hvsync_gen|local_vpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datac => \Mux33~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~46_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Mux44~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~48_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(1)) # (\Mux44~46_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (\Mux44~47_combout\ & (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux44~47_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux44~46_combout\,
	combout => \Mux44~48_combout\);

-- Location: LCCOMB_X19_Y20_N24
\Mux46~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~33_combout\ = (\hvsync_gen|local_vpos\(0)) # (!\Mux40~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datac => \Mux40~2_combout\,
	combout => \Mux46~33_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Mux44~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~45_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (!\Mux46~33_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux33~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~33_combout\,
	datab => \Mux33~3_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~45_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Mux44~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~50_combout\ = (\Mux44~48_combout\ & ((\Mux44~49_combout\) # ((!\hvsync_gen|local_vpos\(1))))) # (!\Mux44~48_combout\ & (((\hvsync_gen|local_vpos\(1) & \Mux44~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~49_combout\,
	datab => \Mux44~48_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux44~45_combout\,
	combout => \Mux44~50_combout\);

-- Location: LCCOMB_X22_Y23_N18
\Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Add2~8_combout\ & (((!\Add2~4_combout\)))) # (!\Add2~8_combout\ & (\Mux3~0_combout\ & (\Add2~4_combout\ & \Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X22_Y23_N26
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Add2~8_combout\ & (\Add2~2_combout\ & ((\Add2~4_combout\)))) # (!\Add2~8_combout\ & (((!\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux35~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X22_Y23_N12
\Mux44~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~18_combout\ = (\Mux3~4_combout\) # ((\hvsync_gen|local_vpos\(0) & (\Mux37~0_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((!\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux37~0_combout\,
	datac => \Mux2~3_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux44~18_combout\);

-- Location: LCCOMB_X22_Y23_N30
\Mux44~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~19_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux44~18_combout\)) # (!\hvsync_gen|local_vpos\(4) & (((\Mux33~3_combout\ & !\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~18_combout\,
	datab => \Mux33~3_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~19_combout\);

-- Location: LCCOMB_X20_Y22_N6
\Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Add2~4_combout\ & (\hvsync_gen|local_hpos\(0) & (\Add2~0_combout\ & \Add2~2_combout\))) # (!\Add2~4_combout\ & (\Add2~2_combout\ $ (((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X20_Y22_N20
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Add2~6_combout\ & ((\Add2~4_combout\) # (!\Add2~2_combout\))) # (!\Add2~6_combout\ & (\Add2~2_combout\ $ (\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X20_Y22_N0
\Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Add2~8_combout\ & (((\Mux26~0_combout\)))) # (!\Add2~8_combout\ & ((\Mux26~1_combout\) # ((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X20_Y19_N2
\Mux44~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~21_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (!\Mux20~0_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux26~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux26~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~21_combout\);

-- Location: LCCOMB_X20_Y25_N14
\Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Add2~0_combout\ & (\hvsync_gen|local_hpos\(0) & (\Add2~4_combout\ & \Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X20_Y25_N16
\Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Add2~6_combout\ & (((\Add2~4_combout\ & \Add2~8_combout\)))) # (!\Add2~6_combout\ & (!\Mux3~5_combout\ & ((!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~5_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X20_Y19_N8
\Mux44~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~20_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((!\Mux37~1_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~3_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux37~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~20_combout\);

-- Location: LCCOMB_X20_Y19_N28
\Mux44~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~22_combout\ = (\hvsync_gen|local_vpos\(1) & (((\hvsync_gen|local_vpos\(2))))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(2) & ((\Mux44~20_combout\))) # (!\hvsync_gen|local_vpos\(2) & (\Mux44~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux44~21_combout\,
	datac => \Mux44~20_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux44~22_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Mux44~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~23_combout\ = (\hvsync_gen|local_vpos\(0) & (((\Mux40~2_combout\)))) # (!\hvsync_gen|local_vpos\(0) & ((\Mux3~4_combout\) # ((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux37~0_combout\,
	datac => \Mux40~2_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux44~23_combout\);

-- Location: LCCOMB_X20_Y19_N14
\Mux44~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~24_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux44~23_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (\Mux33~3_combout\ & ((!\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~3_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux44~23_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~24_combout\);

-- Location: LCCOMB_X20_Y19_N0
\Mux44~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~25_combout\ = (\Mux44~22_combout\ & (((\Mux44~24_combout\) # (!\hvsync_gen|local_vpos\(1))))) # (!\Mux44~22_combout\ & (\Mux44~19_combout\ & ((\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~19_combout\,
	datab => \Mux44~22_combout\,
	datac => \Mux44~24_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux44~25_combout\);

-- Location: LCCOMB_X17_Y23_N12
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Add2~6_combout\ & (((\Add2~2_combout\) # (\Mux32~2_combout\)))) # (!\Add2~6_combout\ & (\Mux25~1_combout\ & (!\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~2_combout\,
	datad => \Mux32~2_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X17_Y22_N18
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Add2~8_combout\ & (((\Add2~4_combout\)))) # (!\Add2~8_combout\ & (\hvsync_gen|local_hpos\(0) & (!\Add2~4_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X17_Y23_N6
\Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (!\Add2~8_combout\ & !\Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X17_Y23_N24
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\ & (((\Mux9~6_combout\) # (!\Add2~2_combout\)))) # (!\Mux15~1_combout\ & (\Mux15~0_combout\ & ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux9~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X20_Y22_N10
\Mux66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\Add2~8_combout\ & !\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X19_Y25_N18
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\hvsync_gen|local_hpos\(0) & ((\Add2~0_combout\ & ((\Add2~4_combout\) # (!\Add2~2_combout\))) # (!\Add2~0_combout\ & ((\Add2~2_combout\))))) # (!\hvsync_gen|local_hpos\(0) & (((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\Add2~6_combout\) # (\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X20_Y22_N12
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Add2~6_combout\) # ((\Add2~0_combout\ & (\hvsync_gen|local_hpos\(0) & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~0_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~4_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X20_Y22_N22
\Mux24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Add2~0_combout\ & ((\hvsync_gen|local_hpos\(0) & (\Add2~6_combout\)) # (!\hvsync_gen|local_hpos\(0) & ((\Add2~4_combout\))))) # (!\Add2~0_combout\ & (((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~0_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~4_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X20_Y22_N8
\Mux44~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~33_combout\ = (\Add2~8_combout\ & (((!\Add2~2_combout\)))) # (!\Add2~8_combout\ & ((\Add2~2_combout\ & (\Mux24~0_combout\)) # (!\Add2~2_combout\ & ((\Mux24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Add2~8_combout\,
	datac => \Mux24~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux44~33_combout\);

-- Location: LCCOMB_X20_Y22_N28
\Mux44~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~36_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux66~0_combout\) # ((\Mux44~33_combout\)))) # (!\hvsync_gen|local_vpos\(5) & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux66~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux44~33_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~36_combout\);

-- Location: LCCOMB_X20_Y20_N4
\Mux44~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~71_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux44~36_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (\Mux15~2_combout\ & (\hvsync_gen|local_vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \Mux44~36_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux44~71_combout\);

-- Location: LCCOMB_X20_Y25_N26
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Add2~8_combout\ & (((!\Add2~6_combout\)))) # (!\Add2~8_combout\ & ((\Add2~6_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~6_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X20_Y25_N4
\Mux44~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~30_combout\ = (\Add2~4_combout\ & (!\Mux18~0_combout\ & ((!\Add2~2_combout\)))) # (!\Add2~4_combout\ & (((\Mux34~3_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux34~3_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux44~30_combout\);

-- Location: LCCOMB_X19_Y22_N28
\Mux44~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~31_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(5) & ((\Mux44~30_combout\))) # (!\hvsync_gen|local_vpos\(5) & (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux2~2_combout\,
	datac => \Mux44~30_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~31_combout\);

-- Location: LCCOMB_X20_Y24_N22
\Mux44~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~32_combout\ = (\Add2~6_combout\ & (((!\Add2~8_combout\) # (!\Mux3~3_combout\)))) # (!\Add2~6_combout\ & ((\Mux4~0_combout\) # ((\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux3~3_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux44~32_combout\);

-- Location: LCCOMB_X20_Y22_N26
\Mux44~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~34_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux66~0_combout\) # ((\Mux44~33_combout\)))) # (!\hvsync_gen|local_vpos\(5) & (((\Mux44~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux66~0_combout\,
	datab => \Mux44~32_combout\,
	datac => \Mux44~33_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~34_combout\);

-- Location: LCCOMB_X19_Y22_N6
\Mux44~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~35_combout\ = (\Mux46~5_combout\ & ((\Mux44~31_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux44~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux44~31_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux44~34_combout\,
	combout => \Mux44~35_combout\);

-- Location: LCCOMB_X19_Y25_N0
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Add2~8_combout\) # ((\Add2~4_combout\ & ((!\Add2~0_combout\) # (!\hvsync_gen|local_hpos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~8_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X19_Y25_N8
\Mux44~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~76_combout\ = (!\Add2~2_combout\ & ((\Mux21~0_combout\) # (\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux44~76_combout\);

-- Location: LCCOMB_X21_Y23_N0
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add2~2_combout\ & ((\Add2~8_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y23_N26
\Mux101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = (\Mux1~0_combout\ & (!\Add2~6_combout\ & \Add2~4_combout\)) # (!\Mux1~0_combout\ & (\Add2~6_combout\ & !\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux101~0_combout\);

-- Location: LCCOMB_X17_Y24_N30
\Mux44~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~27_combout\ = (\Add2~2_combout\ & ((\Add2~8_combout\ & ((!\Add2~6_combout\))) # (!\Add2~8_combout\ & ((\Mux3~0_combout\) # (\Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~8_combout\,
	datac => \Mux3~0_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux44~27_combout\);

-- Location: LCCOMB_X20_Y23_N10
\Mux44~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~28_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux44~76_combout\) # ((\Mux44~27_combout\)))) # (!\hvsync_gen|local_vpos\(5) & (((\Mux101~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~76_combout\,
	datab => \Mux101~0_combout\,
	datac => \Mux44~27_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~28_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Add2~8_combout\ & (\Add2~2_combout\ $ (((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X19_Y23_N18
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Add2~8_combout\ & ((\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X19_Y23_N20
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\Add2~4_combout\ & ((\Add2~6_combout\ & ((!\Mux8~1_combout\))) # (!\Add2~6_combout\ & (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux8~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X19_Y23_N30
\Mux28~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Add2~8_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X19_Y23_N16
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Add2~4_combout\ & ((\Add2~6_combout\ & ((\Mux28~3_combout\))) # (!\Add2~6_combout\ & (\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mux28~3_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X20_Y23_N8
\Mux44~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~26_combout\ = (\hvsync_gen|local_vpos\(5) & (((\Mux26~2_combout\)))) # (!\hvsync_gen|local_vpos\(5) & ((\Mux8~2_combout\) # ((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux44~26_combout\);

-- Location: LCCOMB_X20_Y23_N28
\Mux44~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~29_combout\ = (\Mux46~10_combout\ & ((\hvsync_gen|local_vpos\(4) & ((\Mux44~26_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux44~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~28_combout\,
	datab => \Mux44~26_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux46~10_combout\,
	combout => \Mux44~29_combout\);

-- Location: LCCOMB_X20_Y23_N14
\Mux44~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~37_combout\ = (\Mux44~35_combout\) # ((\Mux44~29_combout\) # ((\Mux46~11_combout\ & \Mux44~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux44~71_combout\,
	datac => \Mux44~35_combout\,
	datad => \Mux44~29_combout\,
	combout => \Mux44~37_combout\);

-- Location: LCCOMB_X20_Y24_N2
\Mux44~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~39_combout\ = (!\Add2~6_combout\ & (!\Add2~8_combout\ & (\Mux3~0_combout\ $ (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux44~39_combout\);

-- Location: LCCOMB_X20_Y24_N20
\Mux44~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~40_combout\ = (\Add2~6_combout\ & ((\Add2~8_combout\ & (!\Mux3~3_combout\)) # (!\Add2~8_combout\ & ((\Mux35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~3_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux44~40_combout\);

-- Location: LCCOMB_X20_Y24_N18
\Mux44~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~73_combout\ = (!\hvsync_gen|local_vpos\(4) & (\hvsync_gen|local_vpos\(5) & ((\Mux44~39_combout\) # (\Mux44~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux44~39_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux44~40_combout\,
	combout => \Mux44~73_combout\);

-- Location: LCCOMB_X20_Y22_N14
\Mux44~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~41_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux66~0_combout\) # ((\Mux44~33_combout\)))) # (!\hvsync_gen|local_vpos\(5) & (((!\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux66~0_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux44~33_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~41_combout\);

-- Location: LCCOMB_X20_Y23_N18
\Mux44~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~42_combout\ = (\Mux46~5_combout\ & ((\Mux44~73_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux44~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~5_combout\,
	datab => \Mux44~73_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux44~41_combout\,
	combout => \Mux44~42_combout\);

-- Location: LCCOMB_X20_Y23_N30
\Mux44~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~72_combout\ = (!\hvsync_gen|local_vpos\(4) & (\hvsync_gen|local_vpos\(5) & ((\Mux8~2_combout\) # (\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~72_combout\);

-- Location: LCCOMB_X20_Y23_N0
\Mux44~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~38_combout\ = (\Mux46~11_combout\ & ((\Mux44~72_combout\) # ((\Mux44~28_combout\ & \hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~28_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux44~72_combout\,
	datad => \Mux46~11_combout\,
	combout => \Mux44~38_combout\);

-- Location: LCCOMB_X20_Y23_N12
\Mux44~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~43_combout\ = (\Mux44~42_combout\) # ((\Mux44~38_combout\) # ((\Mux46~10_combout\ & \Mux44~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~10_combout\,
	datab => \Mux44~42_combout\,
	datac => \Mux44~71_combout\,
	datad => \Mux44~38_combout\,
	combout => \Mux44~43_combout\);

-- Location: LCCOMB_X20_Y19_N26
\Mux44~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~44_combout\ = (\hvsync_gen|local_vpos\(3) & ((\Mux44~37_combout\) # ((\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(3) & (((\Mux44~43_combout\ & !\hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~37_combout\,
	datab => \hvsync_gen|local_vpos\(3),
	datac => \Mux44~43_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux44~44_combout\);

-- Location: LCCOMB_X20_Y19_N12
\Mux44~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~51_combout\ = (\Mux44~44_combout\ & ((\Mux44~50_combout\) # ((!\hvsync_gen|local_vpos\(6))))) # (!\Mux44~44_combout\ & (((\Mux44~25_combout\ & \hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~50_combout\,
	datab => \Mux44~25_combout\,
	datac => \Mux44~44_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux44~51_combout\);

-- Location: LCCOMB_X24_Y20_N2
\rgb_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~3_combout\ = (\track_obstacle_inst|collision_detected~q\) # ((\process_1~3_combout\ & ((\Mux44~51_combout\))) # (!\process_1~3_combout\ & (\track_obstacle_inst|track_color\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|collision_detected~q\,
	datab => \process_1~3_combout\,
	datac => \track_obstacle_inst|track_color\(10),
	datad => \Mux44~51_combout\,
	combout => \rgb_r~3_combout\);

-- Location: LCCOMB_X23_Y20_N20
\rgb_r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~4_combout\ = (\hvsync_gen|display_on~1_combout\ & \rgb_r~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|display_on~1_combout\,
	datad => \rgb_r~3_combout\,
	combout => \rgb_r~4_combout\);

-- Location: FF_X23_Y20_N21
\rgb_r[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_r~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_r[2]~reg0_q\);

-- Location: LCCOMB_X24_Y23_N20
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ((\Add2~4_combout\) # ((!\Add2~2_combout\) # (!\Add2~8_combout\))) # (!\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\Mux43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~13_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux23~0_combout\)))) # (!\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(1) & ((\Mux23~0_combout\))) # (!\hvsync_gen|local_vpos\(1) & (\Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux23~0_combout\,
	combout => \Mux43~13_combout\);

-- Location: LCCOMB_X22_Y21_N18
\Mux43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~14_combout\ = (\hvsync_gen|local_vpos\(5) & (((\Mux43~13_combout\)))) # (!\hvsync_gen|local_vpos\(5) & ((\Mux32~6_combout\) # ((!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux43~13_combout\,
	combout => \Mux43~14_combout\);

-- Location: LCCOMB_X19_Y23_N10
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Add2~6_combout\ & !\Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X19_Y23_N2
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\Add2~6_combout\ & ((\Add2~4_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X19_Y23_N28
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Add2~6_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X19_Y23_N22
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Add2~4_combout\ & (\Add2~6_combout\)) # (!\Add2~4_combout\ & (((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X19_Y23_N0
\Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Add2~8_combout\ & ((\Mux10~1_combout\) # ((\Add2~2_combout\)))) # (!\Add2~8_combout\ & (((!\Mux10~2_combout\ & !\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux10~2_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X19_Y23_N4
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & ((\Mux12~1_combout\) # ((!\Add2~2_combout\)))) # (!\Mux10~3_combout\ & (((\Mux10~0_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux10~3_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X21_Y20_N8
\Mux43~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~18_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux10~4_combout\) # (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(1),
	datac => \Mux10~4_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux43~18_combout\);

-- Location: LCCOMB_X21_Y20_N18
\Mux43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~19_combout\ = (\hvsync_gen|local_vpos\(4)) # ((\Mux43~18_combout\ & ((\Mux32~6_combout\) # (\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux43~18_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~19_combout\);

-- Location: LCCOMB_X22_Y21_N12
\Mux43~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~15_combout\ = (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(4)) # ((\hvsync_gen|local_vpos\(5) & \Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux10~4_combout\,
	combout => \Mux43~15_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Mux32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (\Mux32~3_combout\ & ((\Add2~8_combout\) # ((\Add2~4_combout\) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Mux45~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~43_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux32~4_combout\) # ((\Mux32~5_combout\) # (!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux32~4_combout\,
	datac => \Mux32~5_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux45~43_combout\);

-- Location: LCCOMB_X22_Y21_N6
\Mux43~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~16_combout\ = (\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux23~0_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux23~0_combout\,
	combout => \Mux43~16_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Mux43~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~17_combout\ = (\Mux43~15_combout\) # ((\hvsync_gen|local_vpos\(1) & ((\Mux45~43_combout\) # (\Mux43~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~15_combout\,
	datab => \Mux45~43_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux43~16_combout\,
	combout => \Mux43~17_combout\);

-- Location: LCCOMB_X21_Y20_N20
\Mux43~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~20_combout\ = (\hvsync_gen|local_vpos\(2) & (((\Mux43~17_combout\) # (\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux43~19_combout\ & ((!\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux43~19_combout\,
	datac => \Mux43~17_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux43~20_combout\);

-- Location: LCCOMB_X22_Y24_N16
\Mux43~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~21_combout\ = (!\hvsync_gen|local_vpos\(1) & \hvsync_gen|local_vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(1),
	datac => \hvsync_gen|local_vpos\(5),
	combout => \Mux43~21_combout\);

-- Location: LCCOMB_X21_Y20_N22
\Mux43~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~22_combout\ = (\Mux43~21_combout\ & (((\Mux23~0_combout\)))) # (!\Mux43~21_combout\ & ((\Mux32~6_combout\) # ((!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \Mux23~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux43~21_combout\,
	combout => \Mux43~22_combout\);

-- Location: LCCOMB_X21_Y20_N16
\Mux43~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~23_combout\ = (\Mux43~20_combout\ & (((\Mux43~22_combout\) # (!\hvsync_gen|local_vpos\(3))))) # (!\Mux43~20_combout\ & (\Mux43~14_combout\ & ((\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~14_combout\,
	datab => \Mux43~20_combout\,
	datac => \Mux43~22_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux43~23_combout\);

-- Location: LCCOMB_X23_Y20_N6
\rgb_r~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~6_combout\ = (\track_obstacle_inst|collision_detected~q\) # ((\process_1~3_combout\ & (!\hvsync_gen|local_vpos\(6) & \Mux43~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \hvsync_gen|local_vpos\(6),
	datac => \track_obstacle_inst|collision_detected~q\,
	datad => \Mux43~23_combout\,
	combout => \rgb_r~6_combout\);

-- Location: LCCOMB_X20_Y20_N28
\Mux43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\hvsync_gen|local_vpos\(4) & (((\hvsync_gen|local_vpos\(1) & \hvsync_gen|local_vpos\(0))) # (!\Mux40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(1),
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux40~2_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X20_Y20_N6
\Mux43~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux43~2_combout\) # ((\Mux32~6_combout\ & !\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \Mux43~2_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X20_Y24_N30
\Mux29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (!\Add2~8_combout\ & ((\Add2~6_combout\ & ((!\Mux35~0_combout\))) # (!\Add2~6_combout\ & (!\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux40~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X20_Y24_N28
\Mux29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\) # ((!\Mux3~3_combout\ & (\Add2~6_combout\ & \Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux3~3_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X21_Y20_N10
\Mux43~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~7_combout\ = (\hvsync_gen|local_vpos\(4)) # ((\Mux29~5_combout\ & \hvsync_gen|local_vpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~5_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~7_combout\);

-- Location: LCCOMB_X21_Y20_N28
\Mux43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~8_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux43~7_combout\) # ((!\hvsync_gen|local_vpos\(1) & \Mux32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~7_combout\,
	datab => \hvsync_gen|local_vpos\(1),
	datac => \Mux32~6_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux43~8_combout\);

-- Location: LCCOMB_X20_Y20_N0
\Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\hvsync_gen|local_vpos\(4) & (((!\Mux40~2_combout\) # (!\hvsync_gen|local_vpos\(0))) # (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(1),
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux40~2_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X20_Y20_N26
\Mux43~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = (\Mux43~4_combout\) # ((!\hvsync_gen|local_vpos\(4) & (\Mux32~6_combout\ & \hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux43~4_combout\,
	datac => \Mux32~6_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X21_Y20_N0
\Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~6_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux43~5_combout\) # ((\Mux29~5_combout\ & !\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux29~5_combout\,
	datac => \Mux43~5_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~6_combout\);

-- Location: LCCOMB_X21_Y20_N14
\Mux43~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~9_combout\ = (\hvsync_gen|local_vpos\(2) & (((\Mux43~6_combout\) # (\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux43~8_combout\ & ((!\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~8_combout\,
	datab => \Mux43~6_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux43~9_combout\);

-- Location: LCCOMB_X22_Y22_N16
\Mux43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~10_combout\ = (\hvsync_gen|local_vpos\(1) & (\hvsync_gen|local_vpos\(0))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~10_combout\);

-- Location: LCCOMB_X22_Y22_N18
\Mux43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~11_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux32~4_combout\) # ((\Mux32~5_combout\) # (\Mux43~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux32~4_combout\,
	datac => \Mux32~5_combout\,
	datad => \Mux43~10_combout\,
	combout => \Mux43~11_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Mux43~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~12_combout\ = (\Mux43~9_combout\ & (((\Mux43~11_combout\) # (!\hvsync_gen|local_vpos\(3))))) # (!\Mux43~9_combout\ & (\Mux43~3_combout\ & ((\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~3_combout\,
	datab => \Mux43~9_combout\,
	datac => \Mux43~11_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux43~12_combout\);

-- Location: LCCOMB_X24_Y20_N16
\track_obstacle_inst|track_color~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~11_combout\ = (\reset~input_o\ & !\track_obstacle_inst|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|process_1~3_combout\,
	combout => \track_obstacle_inst|track_color~11_combout\);

-- Location: LCCOMB_X24_Y20_N12
\track_obstacle_inst|track_color~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~13_combout\ = (\reset~input_o\ & (\track_obstacle_inst|LessThan25~18_combout\ & (!\track_obstacle_inst|process_1~8_combout\ & !\track_obstacle_inst|LessThan24~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|LessThan25~18_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~13_combout\);

-- Location: LCCOMB_X24_Y20_N4
\track_obstacle_inst|track_color~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~14_combout\ = (\track_obstacle_inst|collision_detected~q\) # ((\track_obstacle_inst|track_color~13_combout\) # ((\track_obstacle_inst|track_color~11_combout\ & !\track_obstacle_inst|process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|collision_detected~q\,
	datab => \track_obstacle_inst|track_color~11_combout\,
	datac => \track_obstacle_inst|track_color~13_combout\,
	datad => \track_obstacle_inst|process_1~7_combout\,
	combout => \track_obstacle_inst|track_color~14_combout\);

-- Location: FF_X24_Y20_N5
\track_obstacle_inst|track_color[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(11));

-- Location: LCCOMB_X23_Y20_N4
\rgb_r~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~5_combout\ = (\process_1~3_combout\ & (\hvsync_gen|local_vpos\(6) & (\Mux43~12_combout\))) # (!\process_1~3_combout\ & (((\track_obstacle_inst|track_color\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \hvsync_gen|local_vpos\(6),
	datac => \Mux43~12_combout\,
	datad => \track_obstacle_inst|track_color\(11),
	combout => \rgb_r~5_combout\);

-- Location: LCCOMB_X23_Y20_N22
\rgb_r~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~7_combout\ = (\hvsync_gen|display_on~1_combout\ & ((\rgb_r~6_combout\) # (\rgb_r~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_r~6_combout\,
	datac => \rgb_r~5_combout\,
	datad => \hvsync_gen|display_on~1_combout\,
	combout => \rgb_r~7_combout\);

-- Location: FF_X23_Y20_N23
\rgb_r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_r~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_r[3]~reg0_q\);

-- Location: LCCOMB_X20_Y25_N24
\Mux48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Add2~4_combout\) # ((\Add2~2_combout\) # ((\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X20_Y25_N2
\Mux48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\Add2~8_combout\) # ((\Add2~6_combout\ & ((\Mux48~0_combout\))) # (!\Add2~6_combout\ & (!\Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~5_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X22_Y21_N2
\Mux43~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~27_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux32~6_combout\ & ((!\hvsync_gen|local_vpos\(5))))) # (!\hvsync_gen|local_vpos\(4) & (((\Mux48~1_combout\) # (\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux48~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux43~27_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Mux43~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~25_combout\ = (\hvsync_gen|local_vpos\(5) & (((\Mux23~0_combout\)))) # (!\hvsync_gen|local_vpos\(5) & ((\Mux32~6_combout\) # ((!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux23~0_combout\,
	combout => \Mux43~25_combout\);

-- Location: LCCOMB_X17_Y22_N28
\Mux68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\Add2~4_combout\) # ((!\Add2~8_combout\ & (\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X17_Y22_N14
\Mux68~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\Add2~6_combout\ & (((\Add2~2_combout\) # (!\Mux9~0_combout\)))) # (!\Add2~6_combout\ & (!\Mux9~2_combout\ & ((!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux9~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X17_Y22_N8
\Mux68~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux68~2_combout\ = (\Mux68~1_combout\ & (((!\Add2~2_combout\)) # (!\Mux15~0_combout\))) # (!\Mux68~1_combout\ & (((\Mux68~0_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux68~0_combout\,
	datac => \Mux68~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux68~2_combout\);

-- Location: LCCOMB_X22_Y21_N24
\Mux43~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~26_combout\ = (\hvsync_gen|local_vpos\(5) & \Mux68~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(5),
	datac => \Mux68~2_combout\,
	combout => \Mux43~26_combout\);

-- Location: LCCOMB_X22_Y21_N20
\Mux43~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~28_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux43~27_combout\) # ((\Mux43~26_combout\)))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux43~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux43~27_combout\,
	datac => \Mux43~25_combout\,
	datad => \Mux43~26_combout\,
	combout => \Mux43~28_combout\);

-- Location: LCCOMB_X21_Y23_N28
\Mux51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\hvsync_gen|local_hpos\(0) & (\Add2~2_combout\ & (!\Add2~8_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X21_Y23_N22
\Mux51~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & (!\Add2~8_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X21_Y23_N8
\Mux46~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~34_combout\ = (\Add2~6_combout\ & ((\Mux51~0_combout\) # ((\Add2~4_combout\)))) # (!\Add2~6_combout\ & (((!\Add2~4_combout\) # (!\Mux51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux51~1_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux46~34_combout\);

-- Location: LCCOMB_X22_Y21_N28
\Mux43~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~38_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux10~4_combout\) # ((\hvsync_gen|local_vpos\(4))))) # (!\hvsync_gen|local_vpos\(5) & (((\hvsync_gen|local_vpos\(4) & \Mux46~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux46~34_combout\,
	combout => \Mux43~38_combout\);

-- Location: LCCOMB_X22_Y21_N22
\Mux43~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~39_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux43~16_combout\) # ((\Mux45~43_combout\)))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux43~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~16_combout\,
	datab => \Mux45~43_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux43~38_combout\,
	combout => \Mux43~39_combout\);

-- Location: LCCOMB_X22_Y21_N10
\Mux43~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~24_combout\ = (\hvsync_gen|local_vpos\(1) & (((\Mux10~4_combout\)) # (!\hvsync_gen|local_vpos\(5)))) # (!\hvsync_gen|local_vpos\(1) & (\hvsync_gen|local_vpos\(5) & (\Mux32~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \hvsync_gen|local_vpos\(5),
	datac => \Mux32~6_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux43~24_combout\);

-- Location: LCCOMB_X22_Y21_N8
\Mux43~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~36_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux43~24_combout\ & (\Mux46~34_combout\)) # (!\Mux43~24_combout\ & ((\Mux48~1_combout\))))) # (!\hvsync_gen|local_vpos\(4) & (((\Mux43~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~34_combout\,
	datab => \Mux48~1_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux43~24_combout\,
	combout => \Mux43~36_combout\);

-- Location: LCCOMB_X22_Y21_N26
\Mux43~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~37_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(5)) # (\Mux43~36_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\hvsync_gen|local_vpos\(5) & \Mux43~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux43~36_combout\,
	combout => \Mux43~37_combout\);

-- Location: LCCOMB_X22_Y21_N4
\Mux86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (\hvsync_gen|local_vpos\(2) & ((\Mux43~39_combout\) # ((\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(2) & (((!\hvsync_gen|local_vpos\(3) & \Mux43~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~39_combout\,
	datab => \hvsync_gen|local_vpos\(2),
	datac => \hvsync_gen|local_vpos\(3),
	datad => \Mux43~37_combout\,
	combout => \Mux86~0_combout\);

-- Location: LCCOMB_X22_Y21_N30
\Mux86~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux86~1_combout\ = (\hvsync_gen|local_vpos\(3) & ((\Mux86~0_combout\ & (\Mux43~28_combout\)) # (!\Mux86~0_combout\ & ((\Mux43~14_combout\))))) # (!\hvsync_gen|local_vpos\(3) & (((\Mux86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \Mux43~28_combout\,
	datac => \Mux86~0_combout\,
	datad => \Mux43~14_combout\,
	combout => \Mux86~1_combout\);

-- Location: LCCOMB_X17_Y21_N12
\Mux81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\Add2~8_combout\ & ((\Mux39~0_combout\ $ (\Add2~4_combout\)))) # (!\Add2~8_combout\ & (!\Mux19~1_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X17_Y21_N22
\Mux81~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux81~1_combout\ = (\Mux81~0_combout\) # ((\Mux9~0_combout\ & ((!\Mux3~0_combout\) # (!\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux81~0_combout\,
	datab => \Mux39~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux81~1_combout\);

-- Location: LCCOMB_X21_Y20_N6
\Mux43~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~34_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux81~1_combout\) # (\hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(4) & (\Mux68~2_combout\ & ((!\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~2_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux81~1_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~34_combout\);

-- Location: LCCOMB_X21_Y19_N12
\Mux46~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~37_combout\ = (\Mux81~1_combout\) # (\hvsync_gen|local_vpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux81~1_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux46~37_combout\);

-- Location: LCCOMB_X21_Y20_N24
\Mux43~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~35_combout\ = (\Mux43~34_combout\ & (((\Mux46~37_combout\) # (!\hvsync_gen|local_vpos\(1))))) # (!\Mux43~34_combout\ & (\Mux29~5_combout\ & ((\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~34_combout\,
	datab => \Mux29~5_combout\,
	datac => \Mux46~37_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~35_combout\);

-- Location: LCCOMB_X20_Y20_N12
\Mux43~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~32_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(1)) # ((!\Mux40~2_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (!\hvsync_gen|local_vpos\(1) & (\Mux32~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(1),
	datac => \Mux32~6_combout\,
	datad => \Mux40~2_combout\,
	combout => \Mux43~32_combout\);

-- Location: LCCOMB_X22_Y22_N22
\Mux46~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~35_combout\ = (\Add2~6_combout\ & (((!\Add2~8_combout\)) # (!\Add2~4_combout\))) # (!\Add2~6_combout\ & (((\Add2~8_combout\) # (!\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \Mux40~0_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux46~35_combout\);

-- Location: LCCOMB_X22_Y22_N0
\Mux46~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~36_combout\ = (\hvsync_gen|local_vpos\(0) & (\Mux46~35_combout\)) # (!\hvsync_gen|local_vpos\(0) & (((\Mux32~5_combout\) # (\Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~35_combout\,
	datab => \Mux32~5_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux32~4_combout\,
	combout => \Mux46~36_combout\);

-- Location: LCCOMB_X21_Y20_N4
\Mux43~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~33_combout\ = (\Mux43~32_combout\ & (((\Mux46~33_combout\) # (!\hvsync_gen|local_vpos\(1))))) # (!\Mux43~32_combout\ & (\Mux46~36_combout\ & ((\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~32_combout\,
	datab => \Mux46~36_combout\,
	datac => \Mux46~33_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~33_combout\);

-- Location: LCCOMB_X21_Y20_N26
\Mux86~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux86~3_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(2) & ((\hvsync_gen|local_vpos\(3) & ((\Mux43~33_combout\))) # (!\hvsync_gen|local_vpos\(3) & (\Mux43~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux43~35_combout\,
	datac => \Mux43~33_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux86~3_combout\);

-- Location: LCCOMB_X22_Y24_N4
\Mux43~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~30_combout\ = (\hvsync_gen|local_vpos\(0) & \hvsync_gen|local_vpos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datac => \hvsync_gen|local_vpos\(1),
	combout => \Mux43~30_combout\);

-- Location: LCCOMB_X22_Y24_N2
\Mux43~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~29_combout\ = (\hvsync_gen|local_vpos\(1) & (!\hvsync_gen|local_vpos\(0) & ((\Mux46~35_combout\)))) # (!\hvsync_gen|local_vpos\(1) & (((\hvsync_gen|local_vpos\(4)) # (\Mux46~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux46~35_combout\,
	combout => \Mux43~29_combout\);

-- Location: LCCOMB_X22_Y24_N22
\Mux43~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~31_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux43~29_combout\) # ((\Mux81~1_combout\ & \Mux43~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux81~1_combout\,
	datab => \Mux43~30_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux43~29_combout\,
	combout => \Mux43~31_combout\);

-- Location: LCCOMB_X21_Y20_N2
\Mux86~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux86~2_combout\ = (\hvsync_gen|local_vpos\(2) & (\Mux43~31_combout\)) # (!\hvsync_gen|local_vpos\(2) & ((\hvsync_gen|local_vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datac => \Mux43~31_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux86~2_combout\);

-- Location: LCCOMB_X21_Y20_N12
\Mux86~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux86~4_combout\ = (\Mux86~3_combout\ & (\hvsync_gen|local_vpos\(2) $ (((!\Mux86~2_combout\))))) # (!\Mux86~3_combout\ & (\hvsync_gen|local_vpos\(2) & (\Mux43~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux43~6_combout\,
	datac => \Mux86~3_combout\,
	datad => \Mux86~2_combout\,
	combout => \Mux86~4_combout\);

-- Location: LCCOMB_X22_Y20_N8
\rgb_g[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g[0]~0_combout\ = (\hvsync_gen|local_vpos\(6) & ((\Mux86~4_combout\))) # (!\hvsync_gen|local_vpos\(6) & (\Mux86~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux86~1_combout\,
	datab => \Mux86~4_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \rgb_g[0]~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\track_obstacle_inst|track_color~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~15_combout\ = (\reset~input_o\ & !\track_obstacle_inst|collision_detected~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~15_combout\);

-- Location: LCCOMB_X24_Y20_N30
\track_obstacle_inst|track_color~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~16_combout\ = (\track_obstacle_inst|track_color~15_combout\ & ((\track_obstacle_inst|LessThan24~18_combout\) # ((\track_obstacle_inst|process_1~8_combout\) # (!\track_obstacle_inst|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~15_combout\,
	datab => \track_obstacle_inst|LessThan24~18_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan25~18_combout\,
	combout => \track_obstacle_inst|track_color~16_combout\);

-- Location: FF_X24_Y20_N31
\track_obstacle_inst|track_color[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(5));

-- Location: LCCOMB_X23_Y20_N24
\rgb_g~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g~3_combout\ = (\hvsync_gen|display_on~1_combout\ & !\track_obstacle_inst|collision_detected~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|display_on~1_combout\,
	datac => \track_obstacle_inst|collision_detected~q\,
	combout => \rgb_g~3_combout\);

-- Location: FF_X22_Y20_N9
\rgb_g[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g[0]~0_combout\,
	asdata => \track_obstacle_inst|track_color\(5),
	sclr => \ALT_INV_rgb_g~3_combout\,
	sload => \ALT_INV_process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[0]~reg0_q\);

-- Location: LCCOMB_X21_Y23_N12
\Mux75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (!\Add2~6_combout\ & (\Mux51~1_combout\ & \Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \Mux51~1_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux75~0_combout\);

-- Location: LCCOMB_X21_Y23_N6
\Mux75~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux75~1_combout\ = (!\Add2~4_combout\ & ((\Add2~6_combout\ & (!\Mux51~0_combout\)) # (!\Add2~6_combout\ & ((!\Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux75~1_combout\);

-- Location: LCCOMB_X21_Y23_N16
\Mux46~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~44_combout\ = (\hvsync_gen|local_vpos\(0) & (((\Mux37~1_combout\)))) # (!\hvsync_gen|local_vpos\(0) & ((\Mux75~0_combout\) # ((\Mux75~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux75~0_combout\,
	datab => \Mux75~1_combout\,
	datac => \Mux37~1_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux46~44_combout\);

-- Location: LCCOMB_X20_Y25_N6
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Add2~6_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X20_Y25_N20
\Mux73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (\Add2~4_combout\ & (!\Mux13~1_combout\ & ((\Add2~2_combout\)))) # (!\Add2~4_combout\ & (((!\Add2~2_combout\) # (!\Mux34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux34~3_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux73~0_combout\);

-- Location: LCCOMB_X20_Y25_N30
\Mux46~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~41_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\Mux73~0_combout\) # ((\Mux34~4_combout\ & !\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~4_combout\,
	datab => \Mux73~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Add2~2_combout\,
	combout => \Mux46~41_combout\);

-- Location: LCCOMB_X20_Y20_N10
\Mux46~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~43_combout\ = (\Mux46~41_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux42~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~41_combout\,
	datad => \Mux42~2_combout\,
	combout => \Mux46~43_combout\);

-- Location: LCCOMB_X21_Y23_N24
\Mux46~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~39_combout\ = (\Add2~6_combout\ & ((\Mux51~0_combout\) # ((\Add2~4_combout\)))) # (!\Add2~6_combout\ & (((\Mux1~0_combout\ & !\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux46~39_combout\);

-- Location: LCCOMB_X21_Y23_N18
\Mux46~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~40_combout\ = (\hvsync_gen|local_vpos\(4)) # ((!\Mux46~39_combout\ & ((\Mux51~1_combout\) # (!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~39_combout\,
	datac => \Mux51~1_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux46~40_combout\);

-- Location: LCCOMB_X20_Y20_N20
\Mux85~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~23_combout\ = (\hvsync_gen|local_vpos\(2) & (((\Mux46~40_combout\) # (\hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux46~43_combout\ & ((!\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~43_combout\,
	datab => \Mux46~40_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux85~23_combout\);

-- Location: LCCOMB_X20_Y20_N22
\Mux46~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~38_combout\ = (\hvsync_gen|local_vpos\(4) & \Mux42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datad => \Mux42~2_combout\,
	combout => \Mux46~38_combout\);

-- Location: LCCOMB_X20_Y20_N8
\Mux46~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~42_combout\ = (\Mux46~38_combout\) # ((\hvsync_gen|local_vpos\(0) & ((\Mux46~40_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux46~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~38_combout\,
	datab => \Mux46~41_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux46~40_combout\,
	combout => \Mux46~42_combout\);

-- Location: LCCOMB_X20_Y20_N30
\Mux85~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~24_combout\ = (\Mux85~23_combout\ & ((\Mux46~44_combout\) # ((!\hvsync_gen|local_vpos\(1))))) # (!\Mux85~23_combout\ & (((\Mux46~42_combout\ & \hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~44_combout\,
	datab => \Mux85~23_combout\,
	datac => \Mux46~42_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux85~24_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Mux80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (\Add2~4_combout\ & ((\Add2~2_combout\ & (\Mux34~1_combout\)) # (!\Add2~2_combout\ & ((!\Mux34~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux34~3_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux80~0_combout\);

-- Location: LCCOMB_X19_Y25_N12
\Mux80~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux80~1_combout\ = (\Mux80~0_combout\) # ((!\Add2~4_combout\ & (\Mux34~2_combout\ & \Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Mux34~2_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux80~1_combout\);

-- Location: LCCOMB_X19_Y21_N2
\Mux46~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~49_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & ((\Mux42~2_combout\))) # (!\hvsync_gen|local_vpos\(0) & (!\Mux80~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux80~1_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux42~2_combout\,
	combout => \Mux46~49_combout\);

-- Location: LCCOMB_X19_Y21_N4
\Mux46~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~50_combout\ = (\Mux46~49_combout\) # (\Mux46~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux46~49_combout\,
	datac => \Mux46~41_combout\,
	combout => \Mux46~50_combout\);

-- Location: LCCOMB_X21_Y23_N2
\Mux50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Add2~8_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X21_Y23_N4
\Mux67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\Add2~6_combout\ & ((\Mux51~0_combout\) # ((\Add2~4_combout\)))) # (!\Add2~6_combout\ & (((\Mux50~0_combout\ & !\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux50~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X17_Y24_N24
\Mux67~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\Mux67~0_combout\ & (((!\Add2~4_combout\)) # (!\Add2~8_combout\))) # (!\Mux67~0_combout\ & (\Add2~8_combout\ & (\Add2~4_combout\ & !\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux67~0_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X22_Y24_N30
\Mux46~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~48_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux37~1_combout\))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux67~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux67~1_combout\,
	datac => \Mux37~1_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~48_combout\);

-- Location: LCCOMB_X20_Y24_N10
\Mux70~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux70~2_combout\ = ((!\Add2~4_combout\ & ((!\Add2~2_combout\) # (!\Mux3~0_combout\)))) # (!\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux70~2_combout\);

-- Location: LCCOMB_X20_Y24_N6
\Mux70~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux70~3_combout\ = (\Add2~8_combout\ & (((!\Mux3~3_combout\ & \Add2~6_combout\)))) # (!\Add2~8_combout\ & (\Mux70~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux70~3_combout\);

-- Location: LCCOMB_X22_Y24_N28
\Mux46~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~47_combout\ = (\hvsync_gen|local_vpos\(4) & (!\Mux80~1_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux70~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~1_combout\,
	datac => \Mux70~3_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~47_combout\);

-- Location: LCCOMB_X22_Y24_N24
\Mux85~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~25_combout\ = (\hvsync_gen|local_vpos\(1) & (((\hvsync_gen|local_vpos\(2))))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(2) & ((\Mux46~47_combout\))) # (!\hvsync_gen|local_vpos\(2) & (\Mux46~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~48_combout\,
	datab => \Mux46~47_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux85~25_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Mux46~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~45_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & (!\Mux80~1_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((\Mux37~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~1_combout\,
	datab => \Mux37~1_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~45_combout\);

-- Location: LCCOMB_X22_Y24_N18
\Mux46~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~46_combout\ = (\Mux46~45_combout\) # ((\Mux70~3_combout\ & !\hvsync_gen|local_vpos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux46~45_combout\,
	datac => \Mux70~3_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~46_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Mux85~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~26_combout\ = (\Mux85~25_combout\ & ((\Mux46~50_combout\) # ((!\hvsync_gen|local_vpos\(1))))) # (!\Mux85~25_combout\ & (((\hvsync_gen|local_vpos\(1) & \Mux46~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~50_combout\,
	datab => \Mux85~25_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux46~46_combout\,
	combout => \Mux85~26_combout\);

-- Location: LCCOMB_X20_Y20_N24
\Mux85~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~27_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(3) & (\Mux85~24_combout\)) # (!\hvsync_gen|local_vpos\(3) & ((\Mux85~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~24_combout\,
	datab => \Mux85~26_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux85~27_combout\);

-- Location: LCCOMB_X17_Y21_N10
\Mux27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Add2~6_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X17_Y21_N6
\Mux61~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\Add2~8_combout\ & ((\Mux27~2_combout\) # ((\Add2~4_combout\)))) # (!\Add2~8_combout\ & (((!\Mux42~0_combout\ & !\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Add2~8_combout\,
	datac => \Mux42~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X17_Y21_N20
\Mux61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Add2~2_combout\ & ((\Add2~6_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~6_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X17_Y21_N8
\Mux61~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Mux61~1_combout\ & (((!\Add2~4_combout\) # (!\Mux32~3_combout\)))) # (!\Mux61~1_combout\ & (!\Mux61~0_combout\ & ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \Mux61~0_combout\,
	datac => \Mux32~3_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X19_Y24_N16
\Mux85~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~20_combout\ = (\hvsync_gen|local_vpos\(2) & (((!\Mux67~1_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (!\hvsync_gen|local_vpos\(4) & (\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(2),
	datac => \Mux61~2_combout\,
	datad => \Mux67~1_combout\,
	combout => \Mux85~20_combout\);

-- Location: LCCOMB_X17_Y22_N2
\Mux64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\Add2~8_combout\) # ((\hvsync_gen|local_hpos\(0) & (!\Add2~4_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X17_Y22_N12
\Mux64~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\Add2~6_combout\ & (((\Mux64~0_combout\) # (\Add2~2_combout\)))) # (!\Add2~6_combout\ & (!\Mux42~3_combout\ & ((!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datab => \Mux64~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X17_Y22_N6
\Mux85~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~13_combout\ = (\Mux64~1_combout\ & (((!\Add2~2_combout\) # (!\Mux9~1_combout\)))) # (!\Mux64~1_combout\ & (!\Mux27~0_combout\ & ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux64~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux9~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux85~13_combout\);

-- Location: LCCOMB_X19_Y24_N2
\Mux85~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~29_combout\ = (\Mux85~13_combout\ & (\hvsync_gen|local_vpos\(4) & ((!\hvsync_gen|local_vpos\(1)) # (!\hvsync_gen|local_vpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~13_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux85~29_combout\);

-- Location: LCCOMB_X17_Y24_N26
\Mux62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\Add2~2_combout\ & (\Add2~6_combout\)) # (!\Add2~2_combout\ & ((\Add2~6_combout\ $ (!\Add2~8_combout\)) # (!\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X17_Y24_N12
\Mux62~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\Mux62~0_combout\ & (((!\Add2~2_combout\) # (!\Mux9~1_combout\)))) # (!\Mux62~0_combout\ & (!\Mux25~2_combout\ & ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux9~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X19_Y24_N4
\Mux85~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~30_combout\ = (!\hvsync_gen|local_vpos\(4) & (\Mux62~1_combout\ & (\hvsync_gen|local_vpos\(1) $ (\hvsync_gen|local_vpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \Mux62~1_combout\,
	combout => \Mux85~30_combout\);

-- Location: LCCOMB_X19_Y24_N26
\Mux85~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~21_combout\ = (\Mux85~29_combout\) # ((\Mux85~30_combout\) # ((\Mux85~20_combout\ & !\Mux46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~20_combout\,
	datab => \Mux85~29_combout\,
	datac => \Mux85~30_combout\,
	datad => \Mux46~5_combout\,
	combout => \Mux85~21_combout\);

-- Location: LCCOMB_X17_Y21_N16
\Mux53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\hvsync_gen|local_hpos\(0) & (\Add2~2_combout\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X17_Y21_N2
\Mux53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Add2~4_combout\ & (((\Add2~8_combout\)))) # (!\Add2~4_combout\ & ((\Add2~8_combout\ & (!\Mux39~0_combout\)) # (!\Add2~8_combout\ & ((!\Mux53~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X19_Y22_N2
\Mux53~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux53~1_combout\ & (((!\Mux32~3_combout\) # (!\Add2~4_combout\)))) # (!\Mux53~1_combout\ & (\Mux19~0_combout\ & (\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux53~1_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X19_Y22_N30
\Mux85~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~28_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(2) & (\Mux53~2_combout\)) # (!\hvsync_gen|local_vpos\(2) & ((\Mux48~1_combout\))))) # (!\hvsync_gen|local_vpos\(4) & (((\hvsync_gen|local_vpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux53~2_combout\,
	datac => \Mux48~1_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux85~28_combout\);

-- Location: LCCOMB_X21_Y23_N30
\Mux85~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~16_combout\ = (\Add2~6_combout\ & (\Add2~8_combout\ & ((\Add2~2_combout\)))) # (!\Add2~6_combout\ & (((!\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux1~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux85~16_combout\);

-- Location: LCCOMB_X19_Y22_N24
\Mux85~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~17_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux46~5_combout\ & (\Add2~4_combout\ $ (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~5_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux85~17_combout\);

-- Location: LCCOMB_X19_Y22_N18
\Mux85~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~18_combout\ = (\Mux85~28_combout\ & (((\Mux85~16_combout\ & \Mux85~17_combout\)) # (!\Mux46~5_combout\))) # (!\Mux85~28_combout\ & (((\Mux85~16_combout\ & \Mux85~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~28_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux85~16_combout\,
	datad => \Mux85~17_combout\,
	combout => \Mux85~18_combout\);

-- Location: LCCOMB_X19_Y23_N12
\Mux57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Add2~4_combout\ & ((\Add2~6_combout\ $ (!\Mux28~3_combout\)))) # (!\Add2~4_combout\ & (((!\Add2~6_combout\)) # (!\Mux51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux28~3_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X20_Y24_N24
\Mux59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Add2~6_combout\ & ((\Add2~8_combout\ & (!\Mux3~3_combout\)) # (!\Add2~8_combout\ & ((!\Mux40~0_combout\))))) # (!\Add2~6_combout\ & (((!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux40~0_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X19_Y24_N10
\Mux85~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~12_combout\ = (\Mux46~11_combout\ & ((\Mux57~0_combout\) # ((\Mux46~5_combout\ & \Mux59~0_combout\)))) # (!\Mux46~11_combout\ & (\Mux46~5_combout\ & ((\Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux57~0_combout\,
	datad => \Mux59~0_combout\,
	combout => \Mux85~12_combout\);

-- Location: LCCOMB_X19_Y24_N20
\Mux85~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~14_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux46~10_combout\ & (!\Mux85~13_combout\)) # (!\Mux46~10_combout\ & ((\Mux67~1_combout\))))) # (!\hvsync_gen|local_vpos\(4) & (((\Mux46~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~13_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux46~10_combout\,
	datad => \Mux67~1_combout\,
	combout => \Mux85~14_combout\);

-- Location: LCCOMB_X19_Y24_N14
\Mux85~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~15_combout\ = (\hvsync_gen|local_vpos\(4) & (((!\Mux85~14_combout\)))) # (!\hvsync_gen|local_vpos\(4) & ((\Mux85~12_combout\) # ((\Mux61~2_combout\ & \Mux85~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~12_combout\,
	datab => \Mux61~2_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux85~14_combout\,
	combout => \Mux85~15_combout\);

-- Location: LCCOMB_X19_Y22_N4
\Mux85~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~19_combout\ = (\hvsync_gen|local_vpos\(3) & (((\hvsync_gen|local_vpos\(5))))) # (!\hvsync_gen|local_vpos\(3) & ((\hvsync_gen|local_vpos\(5) & ((\Mux85~15_combout\))) # (!\hvsync_gen|local_vpos\(5) & (\Mux85~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \Mux85~18_combout\,
	datac => \Mux85~15_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux85~19_combout\);

-- Location: LCCOMB_X19_Y23_N24
\Mux85~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~7_combout\ = (!\Add2~6_combout\ & ((\Add2~4_combout\ $ (!\Add2~2_combout\)) # (!\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux85~7_combout\);

-- Location: LCCOMB_X19_Y23_N14
\Mux85~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~6_combout\ = (\Add2~6_combout\ & ((\Add2~4_combout\ & ((\Mux28~3_combout\))) # (!\Add2~4_combout\ & (!\Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux28~3_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux85~6_combout\);

-- Location: LCCOMB_X19_Y23_N26
\Mux85~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~8_combout\ = (\Mux46~5_combout\ & ((\Mux85~7_combout\) # ((\Mux85~6_combout\) # (!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~7_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux85~6_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux85~8_combout\);

-- Location: LCCOMB_X19_Y22_N16
\Mux85~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~9_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\Mux48~1_combout\) # (!\hvsync_gen|local_vpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datac => \Mux48~1_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux85~9_combout\);

-- Location: LCCOMB_X19_Y22_N20
\Mux85~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~10_combout\ = (\hvsync_gen|local_vpos\(2) & (\hvsync_gen|local_vpos\(4) & ((\Mux57~0_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (((\Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux53~2_combout\,
	datac => \Mux57~0_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux85~10_combout\);

-- Location: LCCOMB_X19_Y22_N14
\Mux85~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~11_combout\ = (\Mux85~8_combout\) # ((\Mux85~9_combout\) # ((!\Mux46~5_combout\ & \Mux85~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~8_combout\,
	datab => \Mux85~9_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux85~10_combout\,
	combout => \Mux85~11_combout\);

-- Location: LCCOMB_X19_Y22_N22
\Mux85~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux85~22_combout\ = (\Mux85~19_combout\ & ((\Mux85~21_combout\) # ((!\hvsync_gen|local_vpos\(3))))) # (!\Mux85~19_combout\ & (((\Mux85~11_combout\ & \hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~21_combout\,
	datab => \Mux85~19_combout\,
	datac => \Mux85~11_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux85~22_combout\);

-- Location: LCCOMB_X22_Y20_N26
\rgb_g[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g[1]~1_combout\ = (\hvsync_gen|local_vpos\(6) & (\Mux85~27_combout\)) # (!\hvsync_gen|local_vpos\(6) & ((\Mux85~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~27_combout\,
	datab => \Mux85~22_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \rgb_g[1]~1_combout\);

-- Location: FF_X22_Y20_N27
\rgb_g[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g[1]~1_combout\,
	asdata => \track_obstacle_inst|track_color\(5),
	sclr => \ALT_INV_rgb_g~3_combout\,
	sload => \ALT_INV_process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[1]~reg0_q\);

-- Location: LCCOMB_X21_Y25_N24
\Mux84~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~27_combout\ = (\Mux6~0_combout\ & ((\Mux46~10_combout\) # ((\Mux46~5_combout\ & \Mux40~0_combout\)))) # (!\Mux6~0_combout\ & (\Mux46~5_combout\ & (\Mux40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux40~0_combout\,
	datad => \Mux46~10_combout\,
	combout => \Mux84~27_combout\);

-- Location: LCCOMB_X21_Y25_N6
\Mux84~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~35_combout\ = (\Mux84~27_combout\ & (!\Add2~8_combout\ & !\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux84~27_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux84~35_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Mux66~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\Add2~4_combout\ & ((\Mux66~0_combout\) # ((\Add2~2_combout\)))) # (!\Add2~4_combout\ & (((\Mux34~3_combout\ & !\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux66~0_combout\,
	datac => \Mux34~3_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X20_Y25_N12
\Mux66~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux66~2_combout\ = (\Mux66~1_combout\ & (((\Add2~6_combout\) # (!\Add2~2_combout\)))) # (!\Mux66~1_combout\ & (!\Mux34~4_combout\ & ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux66~1_combout\,
	datab => \Mux34~4_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux66~2_combout\);

-- Location: LCCOMB_X21_Y25_N18
\Mux84~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~28_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux84~35_combout\) # ((\Mux46~11_combout\ & \Mux66~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~35_combout\,
	datab => \Mux46~11_combout\,
	datac => \Mux66~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux84~28_combout\);

-- Location: LCCOMB_X21_Y24_N6
\Mux44~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~52_combout\ = (\Mux80~1_combout\ & !\hvsync_gen|local_vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux80~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~52_combout\);

-- Location: LCCOMB_X21_Y24_N0
\Mux44~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~59_combout\ = (\Mux67~1_combout\ & !\hvsync_gen|local_vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux67~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~59_combout\);

-- Location: LCCOMB_X21_Y24_N2
\Mux84~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~25_combout\ = (\hvsync_gen|local_vpos\(2) & ((\Mux44~52_combout\) # ((\hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(2) & (((\Mux44~59_combout\ & !\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~52_combout\,
	datab => \Mux44~59_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux84~25_combout\);

-- Location: LCCOMB_X22_Y24_N14
\Mux44~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~60_combout\ = (\hvsync_gen|local_vpos\(0) & ((!\Mux81~1_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux80~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~1_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux81~1_combout\,
	combout => \Mux44~60_combout\);

-- Location: LCCOMB_X22_Y24_N12
\Mux44~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~58_combout\ = (\hvsync_gen|local_vpos\(0) & ((\Mux80~1_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux67~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux67~1_combout\,
	datac => \Mux80~1_combout\,
	combout => \Mux44~58_combout\);

-- Location: LCCOMB_X22_Y24_N8
\Mux84~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~26_combout\ = (\Mux84~25_combout\ & ((\Mux44~60_combout\) # ((!\hvsync_gen|local_vpos\(1))))) # (!\Mux84~25_combout\ & (((\hvsync_gen|local_vpos\(1) & \Mux44~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~25_combout\,
	datab => \Mux44~60_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux44~58_combout\,
	combout => \Mux84~26_combout\);

-- Location: LCCOMB_X22_Y24_N10
\Mux84~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~29_combout\ = (\hvsync_gen|local_vpos\(3) & (((\hvsync_gen|local_vpos\(4))))) # (!\hvsync_gen|local_vpos\(3) & ((\hvsync_gen|local_vpos\(4) & ((\Mux84~26_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux84~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \Mux84~28_combout\,
	datac => \Mux84~26_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux84~29_combout\);

-- Location: LCCOMB_X22_Y24_N20
\Mux84~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~30_combout\ = (\Mux43~21_combout\) # ((\Mux43~30_combout\) # ((\Mux81~1_combout\) # (\hvsync_gen|local_vpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~21_combout\,
	datab => \Mux43~30_combout\,
	datac => \Mux81~1_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux84~30_combout\);

-- Location: LCCOMB_X21_Y25_N10
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux35~0_combout\ & (\Add2~6_combout\ & !\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~0_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y25_N2
\Mux74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (!\Add2~6_combout\ & ((\Add2~8_combout\ & (\Mux17~3_combout\)) # (!\Add2~8_combout\ & ((\Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux74~0_combout\);

-- Location: LCCOMB_X21_Y25_N20
\Mux44~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~57_combout\ = (\hvsync_gen|local_vpos\(0) & (((\Mux67~1_combout\)))) # (!\hvsync_gen|local_vpos\(0) & ((\Mux7~0_combout\) # ((\Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux74~0_combout\,
	datac => \Mux67~1_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux44~57_combout\);

-- Location: LCCOMB_X21_Y25_N12
\Mux44~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~55_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux74~0_combout\) # ((\Mux35~0_combout\ & \Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux74~0_combout\,
	datac => \Mux35~0_combout\,
	datad => \Mux34~1_combout\,
	combout => \Mux44~55_combout\);

-- Location: LCCOMB_X21_Y25_N14
\Mux44~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~56_combout\ = (!\hvsync_gen|local_vpos\(5) & (!\Add2~6_combout\ & (!\Add2~8_combout\ & \Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux44~56_combout\);

-- Location: LCCOMB_X21_Y25_N8
\Mux84~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~23_combout\ = (\hvsync_gen|local_vpos\(2) & ((\Mux44~55_combout\) # ((\hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(2) & (((\Mux44~56_combout\ & !\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~55_combout\,
	datab => \Mux44~56_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux84~23_combout\);

-- Location: LCCOMB_X21_Y25_N22
\Mux44~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~53_combout\ = (\hvsync_gen|local_vpos\(0) & ((\Add2~8_combout\ & (\Mux17~3_combout\)) # (!\Add2~8_combout\ & ((\Mux35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \hvsync_gen|local_vpos\(0),
	datac => \Mux35~0_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux44~53_combout\);

-- Location: LCCOMB_X21_Y25_N0
\Mux44~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~54_combout\ = (\Add2~6_combout\ & (\Mux44~53_combout\ & (!\Add2~8_combout\))) # (!\Add2~6_combout\ & ((\Add2~8_combout\ & (\Mux44~53_combout\)) # (!\Add2~8_combout\ & ((\Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~53_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux44~54_combout\);

-- Location: LCCOMB_X21_Y25_N30
\Mux84~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~24_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux84~23_combout\ & (\Mux44~57_combout\)) # (!\Mux84~23_combout\ & ((\Mux44~54_combout\))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux84~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux44~57_combout\,
	datac => \Mux84~23_combout\,
	datad => \Mux44~54_combout\,
	combout => \Mux84~24_combout\);

-- Location: LCCOMB_X22_Y24_N6
\Mux84~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~31_combout\ = (\Mux84~29_combout\ & (((!\hvsync_gen|local_vpos\(3))) # (!\Mux84~30_combout\))) # (!\Mux84~29_combout\ & (((\Mux84~24_combout\ & \hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~29_combout\,
	datab => \Mux84~30_combout\,
	datac => \Mux84~24_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux84~31_combout\);

-- Location: LCCOMB_X20_Y22_N24
\Mux90~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux90~2_combout\ = (\Add2~4_combout\ & ((\Add2~6_combout\ & ((!\Add2~8_combout\))) # (!\Add2~6_combout\ & (!\Add2~2_combout\ & \Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux90~2_combout\);

-- Location: LCCOMB_X20_Y22_N18
\Mux56~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Add2~6_combout\ & (\hvsync_gen|local_hpos\(0) & (\Add2~0_combout\ & \Add2~2_combout\))) # (!\Add2~6_combout\ & (\Add2~2_combout\ $ (((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X20_Y22_N4
\Mux56~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux90~2_combout\) # ((!\Add2~4_combout\ & (!\Add2~8_combout\ & \Mux56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux90~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X24_Y23_N4
\Mux60~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = ((\Add2~6_combout\ & (!\Add2~8_combout\ & \Mux17~0_combout\))) # (!\Mux40~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~8_combout\,
	datac => \Mux40~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X21_Y24_N14
\Mux84~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~33_combout\ = (\hvsync_gen|local_vpos\(2) & (((\Mux60~2_combout\ & \hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux56~3_combout\ & ((!\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \Mux60~2_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux84~33_combout\);

-- Location: LCCOMB_X24_Y23_N14
\Mux84~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~14_combout\ = (!\Add2~8_combout\ & ((\Add2~6_combout\ & ((\Mux35~0_combout\))) # (!\Add2~6_combout\ & (\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux40~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux84~14_combout\);

-- Location: LCCOMB_X24_Y23_N30
\Mux84~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~34_combout\ = (\Mux84~14_combout\) # ((\Add2~6_combout\ & (\Add2~8_combout\ & \Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux84~14_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux84~34_combout\);

-- Location: LCCOMB_X21_Y24_N10
\Mux84~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~15_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux84~33_combout\) # ((\Mux46~5_combout\ & \Mux84~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux84~33_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux84~34_combout\,
	combout => \Mux84~15_combout\);

-- Location: LCCOMB_X21_Y24_N28
\Mux84~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~32_combout\ = (\hvsync_gen|local_vpos\(5) & (\Mux67~1_combout\ & ((!\hvsync_gen|local_vpos\(1)) # (!\hvsync_gen|local_vpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux67~1_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux84~32_combout\);

-- Location: LCCOMB_X16_Y21_N26
\Mux63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\Add2~6_combout\ & (\Add2~2_combout\ $ (((!\Add2~0_combout\) # (!\hvsync_gen|local_hpos\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X16_Y21_N28
\Mux63~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux63~2_combout\ = (\Add2~8_combout\ & (((\Mux39~0_combout\) # (\Add2~4_combout\)))) # (!\Add2~8_combout\ & (\Mux63~1_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~1_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux63~2_combout\);

-- Location: LCCOMB_X16_Y21_N0
\Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\Add2~6_combout\) # ((\Add2~2_combout\ & (\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~0_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X19_Y22_N0
\Mux63~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux63~3_combout\ = (\Mux63~2_combout\ & (((\Mux32~3_combout\)) # (!\Add2~4_combout\))) # (!\Mux63~2_combout\ & (\Add2~4_combout\ & (\Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~2_combout\,
	datab => \Add2~4_combout\,
	datac => \Mux63~0_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux63~3_combout\);

-- Location: LCCOMB_X16_Y21_N6
\Mux52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Add2~6_combout\ & (\Add2~2_combout\ & (\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))) # (!\Add2~6_combout\ & ((\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~0_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\Mux52~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Add2~8_combout\ & (((\Mux39~0_combout\) # (\Add2~4_combout\)))) # (!\Add2~8_combout\ & (\Mux52~0_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X16_Y21_N2
\Mux52~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Add2~4_combout\ & ((\Mux52~1_combout\ & ((!\Mux39~4_combout\))) # (!\Mux52~1_combout\ & (!\Mux19~0_combout\)))) # (!\Add2~4_combout\ & (((\Mux52~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux39~4_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux52~1_combout\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X21_Y24_N20
\Mux84~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~12_combout\ = (\Mux46~10_combout\ & ((\hvsync_gen|local_vpos\(5) & (\Mux63~3_combout\)) # (!\hvsync_gen|local_vpos\(5) & ((\Mux52~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~10_combout\,
	datab => \Mux63~3_combout\,
	datac => \Mux52~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux84~12_combout\);

-- Location: LCCOMB_X21_Y24_N8
\Mux84~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~13_combout\ = (\Mux84~32_combout\) # ((\Mux84~12_combout\) # ((\Mux44~52_combout\ & \Mux46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~52_combout\,
	datab => \Mux84~32_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux84~12_combout\,
	combout => \Mux84~13_combout\);

-- Location: LCCOMB_X21_Y24_N12
\Mux84~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~16_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux84~13_combout\) # (\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(4) & (\Mux84~15_combout\ & ((!\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~15_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux84~13_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux84~16_combout\);

-- Location: LCCOMB_X21_Y24_N24
\Mux84~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~10_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux46~11_combout\ & (\Mux60~2_combout\)) # (!\Mux46~11_combout\ & ((\Mux67~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux46~11_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux67~1_combout\,
	combout => \Mux84~10_combout\);

-- Location: LCCOMB_X21_Y24_N26
\Mux84~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~11_combout\ = (\hvsync_gen|local_vpos\(5) & ((!\hvsync_gen|local_vpos\(2)) # (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(1),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux84~11_combout\);

-- Location: LCCOMB_X20_Y24_N4
\Mux84~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~18_combout\ = (!\Add2~6_combout\ & ((\Add2~8_combout\ & (\Mux17~3_combout\)) # (!\Add2~8_combout\ & ((\Mux40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux40~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux84~18_combout\);

-- Location: LCCOMB_X21_Y24_N16
\Mux84~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~19_combout\ = (\Mux46~5_combout\ & ((\Mux84~18_combout\) # ((\Mux34~1_combout\ & \Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux84~18_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux84~19_combout\);

-- Location: LCCOMB_X21_Y24_N18
\Mux84~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~20_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux84~19_combout\) # ((\Mux52~2_combout\ & \Mux46~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~2_combout\,
	datab => \Mux84~19_combout\,
	datac => \Mux46~11_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux84~20_combout\);

-- Location: LCCOMB_X21_Y24_N22
\Mux84~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~17_combout\ = (\Mux46~10_combout\ & ((\hvsync_gen|local_vpos\(5) & ((\Mux66~2_combout\))) # (!\hvsync_gen|local_vpos\(5) & (\Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \Mux46~10_combout\,
	datac => \Mux66~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux84~17_combout\);

-- Location: LCCOMB_X21_Y24_N4
\Mux84~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~21_combout\ = (\Mux84~20_combout\) # ((\Mux84~17_combout\) # ((\Mux84~11_combout\ & \Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~11_combout\,
	datab => \Mux84~20_combout\,
	datac => \Mux84~17_combout\,
	datad => \Mux63~3_combout\,
	combout => \Mux84~21_combout\);

-- Location: LCCOMB_X21_Y24_N30
\Mux84~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux84~22_combout\ = (\Mux84~16_combout\ & (((\Mux84~21_combout\) # (!\hvsync_gen|local_vpos\(3))))) # (!\Mux84~16_combout\ & (\Mux84~10_combout\ & ((\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~16_combout\,
	datab => \Mux84~10_combout\,
	datac => \Mux84~21_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux84~22_combout\);

-- Location: LCCOMB_X22_Y20_N4
\rgb_g[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g[2]~2_combout\ = (\hvsync_gen|local_vpos\(6) & (\Mux84~31_combout\)) # (!\hvsync_gen|local_vpos\(6) & ((\Mux84~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux84~31_combout\,
	datab => \Mux84~22_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \rgb_g[2]~2_combout\);

-- Location: LCCOMB_X24_Y20_N24
\track_obstacle_inst|track_color~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~22_combout\ = (\reset~input_o\ & (!\track_obstacle_inst|collision_detected~q\ & ((\track_obstacle_inst|process_1~7_combout\) # (!\track_obstacle_inst|process_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~3_combout\,
	datab => \track_obstacle_inst|process_1~7_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~22_combout\);

-- Location: LCCOMB_X24_Y20_N0
\track_obstacle_inst|track_color~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~17_combout\ = (\track_obstacle_inst|track_color~22_combout\ & (((\track_obstacle_inst|process_1~8_combout\) # (\track_obstacle_inst|LessThan24~18_combout\)) # (!\track_obstacle_inst|LessThan25~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~22_combout\,
	datab => \track_obstacle_inst|LessThan25~18_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~17_combout\);

-- Location: FF_X24_Y20_N1
\track_obstacle_inst|track_color[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(6));

-- Location: FF_X22_Y20_N5
\rgb_g[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g[2]~2_combout\,
	asdata => \track_obstacle_inst|track_color\(6),
	sclr => \ALT_INV_rgb_g~3_combout\,
	sload => \ALT_INV_process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[2]~reg0_q\);

-- Location: LCCOMB_X24_Y20_N26
\track_obstacle_inst|track_color~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~23_combout\ = (!\track_obstacle_inst|process_1~3_combout\ & (!\track_obstacle_inst|process_1~7_combout\ & (\reset~input_o\ & !\track_obstacle_inst|collision_detected~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~3_combout\,
	datab => \track_obstacle_inst|process_1~7_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~23_combout\);

-- Location: LCCOMB_X24_Y20_N10
\track_obstacle_inst|track_color~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~18_combout\ = (\track_obstacle_inst|track_color~23_combout\ & (((\track_obstacle_inst|process_1~8_combout\) # (\track_obstacle_inst|LessThan24~18_combout\)) # (!\track_obstacle_inst|LessThan25~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~23_combout\,
	datab => \track_obstacle_inst|LessThan25~18_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~18_combout\);

-- Location: FF_X24_Y20_N11
\track_obstacle_inst|track_color[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(7));

-- Location: LCCOMB_X17_Y23_N26
\Mux77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (!\Add2~6_combout\ & ((\Add2~4_combout\ & (\Mux28~1_combout\)) # (!\Add2~4_combout\ & ((!\Mux51~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux51~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux77~0_combout\);

-- Location: LCCOMB_X19_Y23_N6
\Mux77~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux77~1_combout\ = (\Mux12~1_combout\) # ((\Mux77~0_combout\) # ((!\Mux28~3_combout\ & \Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux77~0_combout\,
	datac => \Mux28~3_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux77~1_combout\);

-- Location: LCCOMB_X23_Y21_N10
\Mux46~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~63_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(0) & (\Mux77~1_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((\Mux30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux77~1_combout\,
	datab => \hvsync_gen|local_vpos\(0),
	datac => \Mux30~0_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~63_combout\);

-- Location: LCCOMB_X24_Y23_N8
\Mux71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (\Mux48~0_combout\) # ((\Add2~8_combout\) # (\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X23_Y21_N8
\Mux46~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~59_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & (\Mux30~0_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((!\Mux71~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux71~0_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~59_combout\);

-- Location: LCCOMB_X23_Y21_N18
\Mux46~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~60_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux46~59_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux46~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~59_combout\,
	datac => \Mux46~37_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~60_combout\);

-- Location: LCCOMB_X23_Y21_N14
\Mux46~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~62_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux81~1_combout\))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux71~0_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux81~1_combout\,
	combout => \Mux46~62_combout\);

-- Location: LCCOMB_X23_Y21_N28
\Mux46~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~61_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4)) # (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datac => \Mux30~0_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~61_combout\);

-- Location: LCCOMB_X23_Y21_N16
\Mux83~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~11_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(1)) # (\Mux46~61_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (\Mux46~62_combout\ & (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux46~62_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux46~61_combout\,
	combout => \Mux83~11_combout\);

-- Location: LCCOMB_X23_Y21_N4
\Mux83~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~12_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux83~11_combout\ & (\Mux46~63_combout\)) # (!\Mux83~11_combout\ & ((\Mux46~60_combout\))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux83~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~63_combout\,
	datab => \Mux46~60_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux83~11_combout\,
	combout => \Mux83~12_combout\);

-- Location: LCCOMB_X17_Y21_N18
\Mux65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\Add2~6_combout\ & (((!\Add2~2_combout\) # (!\Add2~0_combout\)) # (!\hvsync_gen|local_hpos\(0)))) # (!\Add2~6_combout\ & ((\Add2~2_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~6_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X17_Y21_N28
\Mux65~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\Add2~8_combout\ & (((\Mux39~0_combout\) # (\Add2~4_combout\)))) # (!\Add2~8_combout\ & (!\Mux65~0_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~0_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X17_Y21_N14
\Mux65~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux65~2_combout\ = (\Add2~4_combout\ & ((\Add2~6_combout\ & (!\Mux65~1_combout\)) # (!\Add2~6_combout\ & (\Mux65~1_combout\ & !\Add2~2_combout\)))) # (!\Add2~4_combout\ & (((\Mux65~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux65~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux65~2_combout\);

-- Location: LCCOMB_X21_Y21_N18
\Mux46~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~57_combout\ = (\Mux46~13_combout\) # ((!\hvsync_gen|local_vpos\(5) & ((\Mux65~2_combout\) # (!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~2_combout\,
	datab => \Mux46~13_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~57_combout\);

-- Location: LCCOMB_X21_Y21_N28
\Mux83~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~8_combout\ = (\Mux84~11_combout\ & ((\hvsync_gen|local_vpos\(4) & (!\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((!\Mux71~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \Mux84~11_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux71~0_combout\,
	combout => \Mux83~8_combout\);

-- Location: LCCOMB_X19_Y22_N26
\Mux83~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~6_combout\ = (\Mux46~5_combout\ & (((\Add2~4_combout\) # (!\Mux32~3_combout\)) # (!\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux46~5_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux83~6_combout\);

-- Location: LCCOMB_X24_Y23_N10
\Mux47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Add2~8_combout\ & (((!\Mux13~0_combout\ & \Add2~6_combout\)))) # (!\Add2~8_combout\ & (((!\Add2~6_combout\)) # (!\Mux48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\Mux83~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~7_combout\ = (\Mux46~22_combout\ & ((\Mux83~6_combout\) # ((\Mux46~11_combout\ & \Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux46~22_combout\,
	datac => \Mux83~6_combout\,
	datad => \Mux47~0_combout\,
	combout => \Mux83~7_combout\);

-- Location: LCCOMB_X21_Y21_N30
\Mux83~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~9_combout\ = (\Mux83~8_combout\) # ((\Mux83~7_combout\) # ((\Mux46~57_combout\ & \Mux46~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~57_combout\,
	datab => \Mux83~8_combout\,
	datac => \Mux46~10_combout\,
	datad => \Mux83~7_combout\,
	combout => \Mux83~9_combout\);

-- Location: LCCOMB_X21_Y21_N6
\Mux46~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~55_combout\ = (\hvsync_gen|local_vpos\(5) & (((\hvsync_gen|local_vpos\(4))))) # (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((!\Mux71~0_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux47~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux71~0_combout\,
	combout => \Mux46~55_combout\);

-- Location: LCCOMB_X21_Y21_N16
\Mux46~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~56_combout\ = (\Mux46~55_combout\ & ((\Mux65~2_combout\) # ((!\hvsync_gen|local_vpos\(5))))) # (!\Mux46~55_combout\ & (((!\Mux39~3_combout\ & \hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~55_combout\,
	datab => \Mux65~2_combout\,
	datac => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~56_combout\);

-- Location: LCCOMB_X21_Y21_N12
\Mux83~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~4_combout\ = (\Mux46~11_combout\ & ((\Mux46~57_combout\) # ((\Mux46~56_combout\ & \Mux46~10_combout\)))) # (!\Mux46~11_combout\ & (\Mux46~56_combout\ & (\Mux46~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux46~56_combout\,
	datac => \Mux46~10_combout\,
	datad => \Mux46~57_combout\,
	combout => \Mux83~4_combout\);

-- Location: LCCOMB_X21_Y21_N22
\Mux46~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~58_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux65~2_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~2_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux2~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~58_combout\);

-- Location: LCCOMB_X21_Y21_N8
\Mux83~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~5_combout\ = (\Mux83~4_combout\) # ((\Mux46~5_combout\ & ((\Mux46~13_combout\) # (\Mux46~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~4_combout\,
	datab => \Mux46~13_combout\,
	datac => \Mux46~58_combout\,
	datad => \Mux46~5_combout\,
	combout => \Mux83~5_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Mux83~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~10_combout\ = (\hvsync_gen|local_vpos\(3) & (((\Mux83~5_combout\) # (\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(3) & (\Mux83~9_combout\ & ((!\hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~9_combout\,
	datab => \hvsync_gen|local_vpos\(3),
	datac => \Mux83~5_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux83~10_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Mux46~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~53_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & (\Mux81~1_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((!\Mux39~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux81~1_combout\,
	datab => \Mux39~3_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~53_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Mux46~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~51_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & ((!\Mux39~3_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux77~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux77~1_combout\,
	datab => \Mux39~3_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~51_combout\);

-- Location: LCCOMB_X20_Y25_N22
\Mux46~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~52_combout\ = (!\Add2~6_combout\ & (!\hvsync_gen|local_vpos\(4) & (!\Add2~8_combout\ & !\Mux48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Add2~8_combout\,
	datad => \Mux48~0_combout\,
	combout => \Mux46~52_combout\);

-- Location: LCCOMB_X23_Y21_N12
\Mux83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (\Mux46~52_combout\) # ((\hvsync_gen|local_vpos\(2) & (\Mux46~53_combout\)) # (!\hvsync_gen|local_vpos\(2) & ((\Mux46~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~53_combout\,
	datab => \Mux46~51_combout\,
	datac => \Mux46~52_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux83~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\Mux46~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~54_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux77~1_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~2_combout\,
	datab => \Mux77~1_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~54_combout\);

-- Location: LCCOMB_X21_Y21_N26
\Mux83~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~1_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux39~3_combout\,
	datad => \Mux71~0_combout\,
	combout => \Mux83~1_combout\);

-- Location: LCCOMB_X21_Y21_N20
\Mux83~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~2_combout\ = (\hvsync_gen|local_vpos\(2) & (((!\Mux83~1_combout\ & !\hvsync_gen|local_vpos\(5))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux46~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux46~54_combout\,
	datac => \Mux83~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux83~2_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Mux83~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~3_combout\ = (\hvsync_gen|local_vpos\(1) & (\Mux83~0_combout\ & ((!\hvsync_gen|local_vpos\(5))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~0_combout\,
	datab => \Mux83~2_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux83~3_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Mux83~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux83~13_combout\ = (\Mux83~10_combout\ & ((\Mux83~12_combout\) # ((!\hvsync_gen|local_vpos\(6))))) # (!\Mux83~10_combout\ & (((\Mux83~3_combout\ & \hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~12_combout\,
	datab => \Mux83~10_combout\,
	datac => \Mux83~3_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux83~13_combout\);

-- Location: LCCOMB_X22_Y20_N6
\rgb_g~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g~4_combout\ = (\rgb_g~3_combout\ & ((\process_1~3_combout\ & ((\Mux83~13_combout\))) # (!\process_1~3_combout\ & (\track_obstacle_inst|track_color\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color\(7),
	datab => \Mux83~13_combout\,
	datac => \process_1~3_combout\,
	datad => \rgb_g~3_combout\,
	combout => \rgb_g~4_combout\);

-- Location: FF_X22_Y20_N7
\rgb_g[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[3]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N4
\Mux93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (\Add2~6_combout\ & (\Add2~2_combout\ $ (((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))) # (!\Add2~6_combout\ & (\Add2~2_combout\ & (\hvsync_gen|local_hpos\(0) & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~0_combout\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X16_Y21_N22
\Mux93~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux93~1_combout\ = (\Add2~8_combout\ & (((\Mux39~0_combout\) # (\Add2~4_combout\)))) # (!\Add2~8_combout\ & (!\Mux93~0_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux93~0_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux93~1_combout\);

-- Location: LCCOMB_X16_Y21_N8
\Mux93~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux93~2_combout\ = (\Add2~4_combout\ & ((\Mux93~1_combout\ & (!\Mux39~4_combout\)) # (!\Mux93~1_combout\ & ((\Mux63~0_combout\))))) # (!\Add2~4_combout\ & (((\Mux93~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux39~4_combout\,
	datac => \Mux93~1_combout\,
	datad => \Mux63~0_combout\,
	combout => \Mux93~2_combout\);

-- Location: LCCOMB_X20_Y19_N24
\Mux46~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~66_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux93~2_combout\ & \hvsync_gen|local_vpos\(5))))) # (!\hvsync_gen|local_vpos\(4) & (\Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux93~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~66_combout\);

-- Location: LCCOMB_X20_Y24_N14
\Mux98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (\Add2~6_combout\ & (((!\Mux35~0_combout\)))) # (!\Add2~6_combout\ & (\Mux4~0_combout\ & ((!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux35~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux98~0_combout\);

-- Location: LCCOMB_X20_Y24_N8
\Mux98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux98~1_combout\ = (\Mux98~0_combout\) # ((\Add2~8_combout\ & ((\Add2~6_combout\) # (!\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux98~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux98~1_combout\);

-- Location: LCCOMB_X20_Y19_N10
\Mux46~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~67_combout\ = (\Mux46~66_combout\) # ((!\hvsync_gen|local_vpos\(5) & ((!\Mux98~1_combout\) # (!\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~66_combout\,
	datac => \Mux98~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~67_combout\);

-- Location: LCCOMB_X20_Y22_N30
\Mux90~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux90~3_combout\ = (\Mux90~2_combout\) # ((!\Mux65~0_combout\ & (!\Add2~8_combout\ & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~0_combout\,
	datab => \Mux90~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux90~3_combout\);

-- Location: LCCOMB_X20_Y21_N10
\Mux103~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~6_combout\ = (\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((!\Mux39~3_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux90~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux90~3_combout\,
	datab => \Mux39~3_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux103~6_combout\);

-- Location: LCCOMB_X20_Y21_N28
\Mux103~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~7_combout\ = (\Mux46~11_combout\ & ((\Mux103~6_combout\) # ((\Mux46~22_combout\ & !\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~6_combout\,
	datab => \Mux46~11_combout\,
	datac => \Mux46~22_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux103~7_combout\);

-- Location: LCCOMB_X20_Y21_N22
\Mux103~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~8_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux39~3_combout\) # ((!\hvsync_gen|local_vpos\(5))))) # (!\hvsync_gen|local_vpos\(4) & (((\hvsync_gen|local_vpos\(5) & \Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux39~3_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux71~0_combout\,
	combout => \Mux103~8_combout\);

-- Location: LCCOMB_X20_Y21_N24
\Mux103~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~9_combout\ = (\Mux46~5_combout\ & ((\Mux103~8_combout\ & (!\hvsync_gen|local_vpos\(5) & !\Mux19~3_combout\)) # (!\Mux103~8_combout\ & (\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~8_combout\,
	datab => \Mux46~5_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \Mux19~3_combout\,
	combout => \Mux103~9_combout\);

-- Location: LCCOMB_X20_Y21_N26
\Mux103~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~10_combout\ = (\Mux103~7_combout\) # ((\Mux103~9_combout\) # ((\Mux46~67_combout\ & \Mux46~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~67_combout\,
	datab => \Mux103~7_combout\,
	datac => \Mux46~10_combout\,
	datad => \Mux103~9_combout\,
	combout => \Mux103~10_combout\);

-- Location: LCCOMB_X21_Y22_N16
\Mux46~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~68_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4)) # ((\Mux34~0_combout\ & !\Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux34~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux48~0_combout\,
	combout => \Mux46~68_combout\);

-- Location: LCCOMB_X19_Y20_N26
\Mux46~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~69_combout\ = ((!\hvsync_gen|local_vpos\(0) & (\Mux39~3_combout\ & \hvsync_gen|local_vpos\(4)))) # (!\Mux46~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux46~68_combout\,
	datac => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~69_combout\);

-- Location: LCCOMB_X19_Y20_N4
\Mux46~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~70_combout\ = (\Mux46~69_combout\) # ((\Mux19~3_combout\ & (\hvsync_gen|local_vpos\(0) & \hvsync_gen|local_vpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~69_combout\,
	datab => \Mux19~3_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~70_combout\);

-- Location: LCCOMB_X19_Y20_N28
\Mux46~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~73_combout\ = (\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & ((\Mux40~2_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux19~3_combout\,
	datac => \Mux40~2_combout\,
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~73_combout\);

-- Location: LCCOMB_X19_Y20_N30
\Mux46~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~74_combout\ = (\Mux46~73_combout\) # ((\hvsync_gen|local_vpos\(5)) # ((\Mux4~1_combout\ & !\hvsync_gen|local_vpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~73_combout\,
	datab => \Mux4~1_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~74_combout\);

-- Location: LCCOMB_X19_Y20_N6
\Mux46~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~71_combout\ = (\hvsync_gen|local_vpos\(5)) # ((\hvsync_gen|local_vpos\(4) & (\Mux19~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux19~3_combout\,
	datac => \Mux71~0_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~71_combout\);

-- Location: LCCOMB_X17_Y23_N4
\Mux95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (\Add2~8_combout\) # ((!\Add2~4_combout\ & (\Add2~0_combout\ & \hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \hvsync_gen|local_hpos\(0),
	combout => \Mux95~0_combout\);

-- Location: LCCOMB_X17_Y23_N30
\Mux95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux95~1_combout\ = (\Add2~2_combout\ & (\Add2~4_combout\ & (!\Mux95~0_combout\ & \Add2~6_combout\))) # (!\Add2~2_combout\ & (!\Add2~6_combout\ & (\Add2~4_combout\ $ (!\Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux95~0_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux95~1_combout\);

-- Location: LCCOMB_X19_Y20_N8
\Mux46~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~72_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (!\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux95~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \Mux95~1_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~72_combout\);

-- Location: LCCOMB_X19_Y20_N10
\Mux103~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~4_combout\ = (\hvsync_gen|local_vpos\(1) & (((\hvsync_gen|local_vpos\(2))))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(2) & (!\Mux46~71_combout\)) # (!\hvsync_gen|local_vpos\(2) & ((\Mux46~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~71_combout\,
	datab => \Mux46~72_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \hvsync_gen|local_vpos\(2),
	combout => \Mux103~4_combout\);

-- Location: LCCOMB_X19_Y20_N16
\Mux103~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~5_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux103~4_combout\ & ((!\Mux46~74_combout\))) # (!\Mux103~4_combout\ & (!\Mux46~70_combout\)))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux103~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux46~70_combout\,
	datac => \Mux46~74_combout\,
	datad => \Mux103~4_combout\,
	combout => \Mux103~5_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Mux103~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~11_combout\ = (\hvsync_gen|local_vpos\(3) & (((\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(3) & ((\hvsync_gen|local_vpos\(6) & ((\Mux103~5_combout\))) # (!\hvsync_gen|local_vpos\(6) & (\Mux103~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~10_combout\,
	datab => \hvsync_gen|local_vpos\(3),
	datac => \Mux103~5_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux103~11_combout\);

-- Location: LCCOMB_X19_Y20_N12
\Mux46~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~79_combout\ = (\hvsync_gen|local_vpos\(5)) # ((\hvsync_gen|local_vpos\(0) & ((\Mux39~3_combout\))) # (!\hvsync_gen|local_vpos\(0) & (\Mux98~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux98~1_combout\,
	datac => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~79_combout\);

-- Location: LCCOMB_X19_Y20_N18
\Mux46~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~75_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & ((!\Mux98~1_combout\))) # (!\hvsync_gen|local_vpos\(0) & (!\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux4~1_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux98~1_combout\,
	combout => \Mux46~75_combout\);

-- Location: LCCOMB_X19_Y20_N20
\Mux46~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~76_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux46~75_combout\) # ((\Mux46~33_combout\ & \hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux46~33_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux46~75_combout\,
	combout => \Mux46~76_combout\);

-- Location: LCCOMB_X19_Y20_N0
\Mux46~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~78_combout\ = (\hvsync_gen|local_vpos\(5)) # ((\hvsync_gen|local_vpos\(4) & ((\Mux40~2_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux4~1_combout\,
	datac => \Mux40~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~78_combout\);

-- Location: LCCOMB_X19_Y20_N22
\Mux46~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~77_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4)) # (!\Mux98~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux98~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~77_combout\);

-- Location: LCCOMB_X19_Y20_N2
\Mux103~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~12_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(1)) # (\Mux46~77_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (!\Mux46~78_combout\ & (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux46~78_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux46~77_combout\,
	combout => \Mux103~12_combout\);

-- Location: LCCOMB_X19_Y20_N14
\Mux103~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~13_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux103~12_combout\ & (!\Mux46~79_combout\)) # (!\Mux103~12_combout\ & ((\Mux46~76_combout\))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux103~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~79_combout\,
	datab => \Mux46~76_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux103~12_combout\,
	combout => \Mux103~13_combout\);

-- Location: LCCOMB_X20_Y21_N0
\Mux46~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~64_combout\ = (\hvsync_gen|local_vpos\(5) & (((\hvsync_gen|local_vpos\(4))))) # (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux90~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((!\Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux90~3_combout\,
	datab => \Mux3~2_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux46~64_combout\);

-- Location: LCCOMB_X20_Y19_N30
\Mux46~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~65_combout\ = (\Mux46~64_combout\ & (((\Mux95~1_combout\) # (!\hvsync_gen|local_vpos\(5))))) # (!\Mux46~64_combout\ & (!\Mux39~3_combout\ & ((\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \Mux46~64_combout\,
	datac => \Mux95~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~65_combout\);

-- Location: LCCOMB_X20_Y19_N22
\Mux103~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~15_combout\ = (\hvsync_gen|local_vpos\(2) & (((\Mux46~65_combout\ & \hvsync_gen|local_vpos\(1))))) # (!\hvsync_gen|local_vpos\(2) & (\Mux46~67_combout\ & ((!\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~67_combout\,
	datab => \hvsync_gen|local_vpos\(2),
	datac => \Mux46~65_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux103~15_combout\);

-- Location: LCCOMB_X20_Y19_N20
\Mux103~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~2_combout\ = (\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux93~2_combout\))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux93~2_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux103~2_combout\);

-- Location: LCCOMB_X20_Y19_N6
\Mux103~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~3_combout\ = (\Mux103~15_combout\) # ((\Mux46~5_combout\ & ((\Mux103~2_combout\) # (\Mux46~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~15_combout\,
	datab => \Mux103~2_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux46~58_combout\,
	combout => \Mux103~3_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Mux103~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux103~14_combout\ = (\Mux103~11_combout\ & ((\Mux103~13_combout\) # ((!\hvsync_gen|local_vpos\(3))))) # (!\Mux103~11_combout\ & (((\Mux103~3_combout\ & \hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~11_combout\,
	datab => \Mux103~13_combout\,
	datac => \Mux103~3_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux103~14_combout\);

-- Location: LCCOMB_X24_Y20_N20
\track_obstacle_inst|track_color~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~24_combout\ = (\track_obstacle_inst|process_1~3_combout\ & (\reset~input_o\ & !\track_obstacle_inst|collision_detected~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~3_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~24_combout\);

-- Location: LCCOMB_X24_Y20_N28
\track_obstacle_inst|track_color~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~19_combout\ = (\track_obstacle_inst|track_color~24_combout\ & ((\track_obstacle_inst|LessThan24~18_combout\) # ((\track_obstacle_inst|process_1~8_combout\) # (!\track_obstacle_inst|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~24_combout\,
	datab => \track_obstacle_inst|LessThan24~18_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan25~18_combout\,
	combout => \track_obstacle_inst|track_color~19_combout\);

-- Location: FF_X24_Y20_N29
\track_obstacle_inst|track_color[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(1));

-- Location: LCCOMB_X22_Y20_N0
\rgb_b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~0_combout\ = (\rgb_g~3_combout\ & ((\process_1~3_combout\ & (\Mux103~14_combout\)) # (!\process_1~3_combout\ & ((\track_obstacle_inst|track_color\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux103~14_combout\,
	datab => \rgb_g~3_combout\,
	datac => \process_1~3_combout\,
	datad => \track_obstacle_inst|track_color\(1),
	combout => \rgb_b~0_combout\);

-- Location: FF_X22_Y20_N1
\rgb_b[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_b[0]~reg0_q\);

-- Location: LCCOMB_X19_Y24_N30
\Mux102~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~3_combout\ = (\hvsync_gen|local_vpos\(4) & (((\hvsync_gen|local_vpos\(5))) # (!\Mux46~11_combout\))) # (!\hvsync_gen|local_vpos\(4) & (((\Mux46~5_combout\ & \hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux46~5_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux102~3_combout\);

-- Location: LCCOMB_X19_Y24_N24
\Mux102~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~4_combout\ = (\Mux46~10_combout\) # ((\Mux102~3_combout\ & ((\Mux23~0_combout\))) # (!\Mux102~3_combout\ & (\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux102~3_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux46~10_combout\,
	combout => \Mux102~4_combout\);

-- Location: LCCOMB_X17_Y24_N22
\Mux97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (((!\Add2~8_combout\) # (!\Add2~4_combout\)) # (!\Add2~6_combout\)) # (!\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux97~0_combout\);

-- Location: LCCOMB_X19_Y24_N18
\Mux102~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~5_combout\ = (\hvsync_gen|local_vpos\(5) & (((\Mux102~4_combout\)))) # (!\hvsync_gen|local_vpos\(5) & (((\Mux97~0_combout\)) # (!\Mux102~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux102~3_combout\,
	datab => \Mux102~4_combout\,
	datac => \Mux97~0_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux102~5_combout\);

-- Location: LCCOMB_X19_Y24_N22
\Mux102~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~7_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux23~0_combout\) # (!\Mux46~10_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (\Mux61~2_combout\ & ((\Mux46~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux61~2_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux46~10_combout\,
	combout => \Mux102~7_combout\);

-- Location: LCCOMB_X19_Y24_N28
\Mux102~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~6_combout\ = (\Mux46~11_combout\ & ((\Mux97~0_combout\) # ((\Mux46~5_combout\ & \Mux59~0_combout\)))) # (!\Mux46~11_combout\ & (\Mux46~5_combout\ & ((\Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux97~0_combout\,
	datad => \Mux59~0_combout\,
	combout => \Mux102~6_combout\);

-- Location: LCCOMB_X19_Y24_N0
\Mux102~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~8_combout\ = (\Mux102~7_combout\) # ((\hvsync_gen|local_vpos\(5) & (\Mux102~6_combout\)) # (!\hvsync_gen|local_vpos\(5) & ((\Mux46~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux102~7_combout\,
	datab => \Mux102~6_combout\,
	datac => \Mux46~10_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux102~8_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Mux102~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~9_combout\ = (\hvsync_gen|local_vpos\(3) & ((\Mux102~5_combout\) # ((\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(3) & (((\Mux102~8_combout\ & !\hvsync_gen|local_vpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux102~5_combout\,
	datab => \hvsync_gen|local_vpos\(3),
	datac => \Mux102~8_combout\,
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux102~9_combout\);

-- Location: LCCOMB_X19_Y24_N6
\Mux102~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~13_combout\ = (\hvsync_gen|local_vpos\(4)) # ((\hvsync_gen|local_vpos\(1) & (\hvsync_gen|local_vpos\(2) & \Mux97~0_combout\)) # (!\hvsync_gen|local_vpos\(1) & (!\hvsync_gen|local_vpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \hvsync_gen|local_vpos\(4),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \Mux97~0_combout\,
	combout => \Mux102~13_combout\);

-- Location: LCCOMB_X19_Y24_N12
\Mux102~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~2_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux102~13_combout\) # ((\Mux46~5_combout\ & \Mux70~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux102~13_combout\,
	datab => \Mux46~5_combout\,
	datac => \Mux70~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux102~2_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Mux102~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~10_combout\ = (\hvsync_gen|local_vpos\(2) & ((\hvsync_gen|local_vpos\(1) & (\hvsync_gen|local_vpos\(0))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(4)))))) # (!\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \hvsync_gen|local_vpos\(2),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux102~10_combout\);

-- Location: LCCOMB_X23_Y24_N24
\Mux102~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~11_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux97~0_combout\) # (\Mux102~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux97~0_combout\,
	datac => \Mux102~10_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux102~11_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Mux102~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux102~12_combout\ = (\hvsync_gen|local_vpos\(6) & ((\Mux102~9_combout\ & ((\Mux102~11_combout\))) # (!\Mux102~9_combout\ & (\Mux102~2_combout\)))) # (!\hvsync_gen|local_vpos\(6) & (\Mux102~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(6),
	datab => \Mux102~9_combout\,
	datac => \Mux102~2_combout\,
	datad => \Mux102~11_combout\,
	combout => \Mux102~12_combout\);

-- Location: LCCOMB_X22_Y20_N18
\rgb_b~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~1_combout\ = (\rgb_g~3_combout\ & ((\process_1~3_combout\ & (\Mux102~12_combout\)) # (!\process_1~3_combout\ & ((\track_obstacle_inst|track_color\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux102~12_combout\,
	datab => \rgb_g~3_combout\,
	datac => \process_1~3_combout\,
	datad => \track_obstacle_inst|track_color\(1),
	combout => \rgb_b~1_combout\);

-- Location: FF_X22_Y20_N19
\rgb_b[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_b[1]~reg0_q\);

-- Location: LCCOMB_X24_Y20_N6
\track_obstacle_inst|track_color~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~25_combout\ = (\track_obstacle_inst|process_1~7_combout\ & (\reset~input_o\ & !\track_obstacle_inst|collision_detected~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|process_1~7_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~25_combout\);

-- Location: LCCOMB_X24_Y20_N14
\track_obstacle_inst|track_color~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~20_combout\ = (\track_obstacle_inst|track_color~25_combout\ & (((\track_obstacle_inst|process_1~8_combout\) # (\track_obstacle_inst|LessThan24~18_combout\)) # (!\track_obstacle_inst|LessThan25~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~25_combout\,
	datab => \track_obstacle_inst|LessThan25~18_combout\,
	datac => \track_obstacle_inst|process_1~8_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~20_combout\);

-- Location: FF_X24_Y20_N15
\track_obstacle_inst|track_color[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(2));

-- Location: LCCOMB_X21_Y19_N26
\Mux44~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~70_combout\ = (!\hvsync_gen|local_vpos\(4) & ((\hvsync_gen|local_vpos\(0) & (\Mux39~3_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((\Mux33~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~3_combout\,
	datab => \Mux33~3_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux44~70_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Mux101~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~16_combout\ = (\Mux44~48_combout\ & ((\Mux44~70_combout\) # ((!\hvsync_gen|local_vpos\(1))))) # (!\Mux44~48_combout\ & (((\hvsync_gen|local_vpos\(1) & \Mux44~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~70_combout\,
	datab => \Mux44~48_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux44~45_combout\,
	combout => \Mux101~16_combout\);

-- Location: LCCOMB_X17_Y24_N10
\Mux44~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~62_combout\ = (\Add2~2_combout\ & ((\Add2~6_combout\ & (!\Add2~4_combout\ & !\Add2~8_combout\)) # (!\Add2~6_combout\ & (\Add2~4_combout\ & \Add2~8_combout\)))) # (!\Add2~2_combout\ & (\Add2~8_combout\ $ (((!\Add2~6_combout\ & \Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux44~62_combout\);

-- Location: LCCOMB_X17_Y24_N8
\Mux44~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~61_combout\ = (\Add2~4_combout\ & (\Add2~8_combout\ & (\Add2~2_combout\ $ (\Add2~6_combout\)))) # (!\Add2~4_combout\ & (\Add2~2_combout\ $ (((\Add2~6_combout\) # (\Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux44~61_combout\);

-- Location: LCCOMB_X17_Y24_N28
\Mux44~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~63_combout\ = (\hvsync_gen|local_vpos\(5) & ((\Mux3~0_combout\ & ((\Mux44~61_combout\))) # (!\Mux3~0_combout\ & (\Mux44~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~62_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux44~61_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~63_combout\);

-- Location: LCCOMB_X20_Y21_N14
\Mux101~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~9_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux44~63_combout\) # ((\Mux19~3_combout\ & !\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~63_combout\,
	datab => \Mux19~3_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux101~9_combout\);

-- Location: LCCOMB_X20_Y23_N22
\Mux101~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~10_combout\ = (\Mux101~9_combout\ & (\hvsync_gen|local_vpos\(2) $ (((\hvsync_gen|local_vpos\(1)))))) # (!\Mux101~9_combout\ & (\Mux44~73_combout\ & (\hvsync_gen|local_vpos\(2) $ (\hvsync_gen|local_vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~9_combout\,
	datab => \hvsync_gen|local_vpos\(2),
	datac => \Mux44~73_combout\,
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux101~10_combout\);

-- Location: LCCOMB_X20_Y20_N2
\Mux44~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~64_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux44~63_combout\) # ((\Mux98~1_combout\ & !\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~63_combout\,
	datab => \Mux98~1_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux44~64_combout\);

-- Location: LCCOMB_X20_Y20_N14
\Mux44~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~74_combout\ = (\Mux44~64_combout\) # ((\Mux15~2_combout\ & (\hvsync_gen|local_vpos\(5) & !\hvsync_gen|local_vpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux44~64_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux44~74_combout\);

-- Location: LCCOMB_X22_Y23_N4
\Mux91~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux91~2_combout\ = (\Add2~8_combout\ & ((\Add2~4_combout\ $ (!\Add2~2_combout\)))) # (!\Add2~8_combout\ & ((\Mux3~0_combout\ & ((\Add2~2_combout\))) # (!\Mux3~0_combout\ & (\Add2~4_combout\ & !\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux91~2_combout\);

-- Location: LCCOMB_X22_Y23_N22
\Mux91~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux91~3_combout\ = (\Add2~6_combout\ & ((\Mux91~2_combout\ & (!\Add2~4_combout\ & \Add2~8_combout\)) # (!\Mux91~2_combout\ & (\Add2~4_combout\ $ (!\Add2~8_combout\))))) # (!\Add2~6_combout\ & (\Mux91~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux91~2_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux91~3_combout\);

-- Location: LCCOMB_X20_Y23_N24
\Mux101~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~12_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux91~3_combout\)) # (!\hvsync_gen|local_vpos\(4) & (((\Mux8~3_combout\) # (\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux91~3_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datac => \Mux8~3_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux101~12_combout\);

-- Location: LCCOMB_X21_Y23_N14
\Mux101~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~11_combout\ = (\Mux46~22_combout\ & ((\Mux1~0_combout\ & (!\Add2~6_combout\ & \Add2~4_combout\)) # (!\Mux1~0_combout\ & (\Add2~6_combout\ & !\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~22_combout\,
	datab => \Mux1~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux101~11_combout\);

-- Location: LCCOMB_X20_Y23_N2
\Mux101~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~13_combout\ = (\Mux46~11_combout\ & ((\Mux101~11_combout\) # ((\Mux101~12_combout\ & \hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~11_combout\,
	datab => \Mux101~12_combout\,
	datac => \Mux101~11_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux101~13_combout\);

-- Location: LCCOMB_X20_Y23_N4
\Mux101~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~14_combout\ = (\Mux101~10_combout\) # ((\Mux101~13_combout\) # ((\Mux46~10_combout\ & \Mux44~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~10_combout\,
	datab => \Mux46~10_combout\,
	datac => \Mux44~74_combout\,
	datad => \Mux101~13_combout\,
	combout => \Mux101~14_combout\);

-- Location: LCCOMB_X22_Y25_N4
\Mux44~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~68_combout\ = (\hvsync_gen|local_vpos\(0) & \Mux40~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux40~2_combout\,
	combout => \Mux44~68_combout\);

-- Location: LCCOMB_X21_Y19_N22
\Mux44~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~69_combout\ = (\Mux44~46_combout\) # ((\hvsync_gen|local_vpos\(4) & ((\Mux44~68_combout\) # (!\Mux46~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~46_combout\,
	datab => \Mux44~68_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux46~37_combout\,
	combout => \Mux44~69_combout\);

-- Location: LCCOMB_X22_Y23_N10
\Mux95~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux95~2_combout\ = (!\Add2~8_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux95~2_combout\);

-- Location: LCCOMB_X21_Y23_N10
\Mux94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = \Add2~2_combout\ $ (((\hvsync_gen|local_hpos\(0) & (!\Add2~8_combout\ & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
	datab => \Add2~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux94~0_combout\);

-- Location: LCCOMB_X21_Y23_N20
\Mux94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux94~1_combout\ = (\Add2~6_combout\ & (((\Add2~4_combout\) # (!\Mux50~0_combout\)))) # (!\Add2~6_combout\ & (\Mux94~0_combout\ & ((!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux94~0_combout\,
	datab => \Mux50~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux94~1_combout\);

-- Location: LCCOMB_X22_Y23_N20
\Mux94~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux94~2_combout\ = (\Mux95~2_combout\ & ((\Add2~4_combout\ & (\Mux3~0_combout\ & !\Mux94~1_combout\)) # (!\Add2~4_combout\ & ((\Mux94~1_combout\))))) # (!\Mux95~2_combout\ & (((\Mux94~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux95~2_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux94~1_combout\,
	combout => \Mux94~2_combout\);

-- Location: LCCOMB_X21_Y19_N18
\Mux44~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~67_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((\Mux39~3_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux94~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux94~2_combout\,
	datac => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~67_combout\);

-- Location: LCCOMB_X21_Y19_N24
\Mux44~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~66_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & ((!\Mux81~1_combout\))) # (!\hvsync_gen|local_vpos\(4) & (\Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux33~3_combout\,
	datac => \Mux81~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~66_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Mux101~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~7_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(1)) # (\Mux44~66_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (\Mux44~67_combout\ & (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux44~67_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux44~66_combout\,
	combout => \Mux101~7_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Mux44~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~65_combout\ = (\hvsync_gen|local_vpos\(0) & (!\Mux81~1_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((\Mux39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux81~1_combout\,
	datac => \Mux39~3_combout\,
	datad => \hvsync_gen|local_vpos\(0),
	combout => \Mux44~65_combout\);

-- Location: LCCOMB_X21_Y19_N6
\Mux44~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~75_combout\ = (\hvsync_gen|local_vpos\(4) & (((\Mux44~65_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (\Mux33~3_combout\ & ((!\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux33~3_combout\,
	datac => \Mux44~65_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux44~75_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Mux101~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~8_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux101~7_combout\ & (\Mux44~69_combout\)) # (!\Mux101~7_combout\ & ((\Mux44~75_combout\))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux101~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~69_combout\,
	datab => \hvsync_gen|local_vpos\(1),
	datac => \Mux101~7_combout\,
	datad => \Mux44~75_combout\,
	combout => \Mux101~8_combout\);

-- Location: LCCOMB_X20_Y19_N18
\Mux101~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~15_combout\ = (\hvsync_gen|local_vpos\(3) & (((\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(3) & ((\hvsync_gen|local_vpos\(6) & ((\Mux101~8_combout\))) # (!\hvsync_gen|local_vpos\(6) & (\Mux101~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~14_combout\,
	datab => \Mux101~8_combout\,
	datac => \hvsync_gen|local_vpos\(3),
	datad => \hvsync_gen|local_vpos\(6),
	combout => \Mux101~15_combout\);

-- Location: LCCOMB_X20_Y23_N26
\Mux101~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~3_combout\ = (\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(4) & (\Mux94~2_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux91~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux94~2_combout\,
	datac => \Mux91~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux101~3_combout\);

-- Location: LCCOMB_X20_Y23_N6
\Mux101~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~1_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux8~2_combout\) # ((\Mux8~3_combout\)))) # (!\hvsync_gen|local_vpos\(4) & (((\Mux101~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux101~0_combout\,
	combout => \Mux101~1_combout\);

-- Location: LCCOMB_X20_Y23_N16
\Mux101~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~2_combout\ = (\Mux101~1_combout\ & !\hvsync_gen|local_vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~1_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux101~2_combout\);

-- Location: LCCOMB_X20_Y23_N20
\Mux101~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~4_combout\ = (\hvsync_gen|local_vpos\(2) & ((\Mux101~3_combout\) # ((\Mux101~2_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (((\Mux44~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~3_combout\,
	datab => \Mux44~74_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \Mux101~2_combout\,
	combout => \Mux101~4_combout\);

-- Location: LCCOMB_X16_Y21_N18
\Mux89~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (\Add2~2_combout\ & (((!\Add2~0_combout\) # (!\hvsync_gen|local_hpos\(0))))) # (!\Add2~2_combout\ & ((\Add2~6_combout\) # ((\hvsync_gen|local_hpos\(0) & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \hvsync_gen|local_hpos\(0),
	datad => \Add2~0_combout\,
	combout => \Mux89~0_combout\);

-- Location: LCCOMB_X16_Y21_N20
\Mux89~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux89~1_combout\ = (\Add2~4_combout\ & (((\Add2~8_combout\)))) # (!\Add2~4_combout\ & ((\Add2~8_combout\ & (!\Mux39~0_combout\)) # (!\Add2~8_combout\ & ((\Mux89~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux89~0_combout\,
	combout => \Mux89~1_combout\);

-- Location: LCCOMB_X16_Y21_N14
\Mux89~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux89~2_combout\ = (\Add2~4_combout\ & ((\Mux89~1_combout\ & ((\Mux39~4_combout\))) # (!\Mux89~1_combout\ & (\Mux19~0_combout\)))) # (!\Add2~4_combout\ & (((\Mux89~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux39~4_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux89~1_combout\,
	combout => \Mux89~2_combout\);

-- Location: LCCOMB_X20_Y21_N4
\Mux101~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~5_combout\ = (\hvsync_gen|local_vpos\(4) & ((\Mux44~63_combout\) # ((\Mux89~2_combout\ & !\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~63_combout\,
	datab => \Mux89~2_combout\,
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(4),
	combout => \Mux101~5_combout\);

-- Location: LCCOMB_X20_Y19_N16
\Mux101~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~6_combout\ = (\Mux46~5_combout\ & (((\Mux44~31_combout\) # (\Mux101~5_combout\)))) # (!\Mux46~5_combout\ & (\Mux101~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~4_combout\,
	datab => \Mux44~31_combout\,
	datac => \Mux46~5_combout\,
	datad => \Mux101~5_combout\,
	combout => \Mux101~6_combout\);

-- Location: LCCOMB_X20_Y19_N4
\Mux101~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux101~17_combout\ = (\Mux101~15_combout\ & ((\Mux101~16_combout\) # ((!\hvsync_gen|local_vpos\(3))))) # (!\Mux101~15_combout\ & (((\hvsync_gen|local_vpos\(3) & \Mux101~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux101~16_combout\,
	datab => \Mux101~15_combout\,
	datac => \hvsync_gen|local_vpos\(3),
	datad => \Mux101~6_combout\,
	combout => \Mux101~17_combout\);

-- Location: LCCOMB_X22_Y20_N28
\rgb_b~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~2_combout\ = (\rgb_g~3_combout\ & ((\process_1~3_combout\ & ((\Mux101~17_combout\))) # (!\process_1~3_combout\ & (\track_obstacle_inst|track_color\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color\(2),
	datab => \process_1~3_combout\,
	datac => \Mux101~17_combout\,
	datad => \rgb_g~3_combout\,
	combout => \rgb_b~2_combout\);

-- Location: FF_X22_Y20_N29
\rgb_b[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_b[2]~reg0_q\);

-- Location: LCCOMB_X23_Y23_N20
\Mux100~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~17_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux71~0_combout\)) # (!\hvsync_gen|local_vpos\(4) & ((\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux71~0_combout\,
	datac => \Mux2~2_combout\,
	combout => \Mux100~17_combout\);

-- Location: LCCOMB_X23_Y23_N24
\Mux100~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~27_combout\ = (\hvsync_gen|local_vpos\(4) & (\Mux100~17_combout\ $ (((\hvsync_gen|local_vpos\(1) & \hvsync_gen|local_vpos\(2)))))) # (!\hvsync_gen|local_vpos\(4) & (!\Mux100~17_combout\ & (\hvsync_gen|local_vpos\(1) $ 
-- (\hvsync_gen|local_vpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \hvsync_gen|local_vpos\(2),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux100~17_combout\,
	combout => \Mux100~27_combout\);

-- Location: LCCOMB_X22_Y23_N14
\Mux100~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~18_combout\ = (\Mux100~14_combout\ & ((\hvsync_gen|local_vpos\(5) & ((\Mux2~3_combout\))) # (!\hvsync_gen|local_vpos\(5) & (!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux100~14_combout\,
	datac => \Mux2~3_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux100~18_combout\);

-- Location: LCCOMB_X23_Y23_N2
\Mux100~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~28_combout\ = (\hvsync_gen|local_vpos\(2) & ((\hvsync_gen|local_vpos\(1) & (\Mux100~18_combout\)) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(5)))))) # (!\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux100~18_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \Mux100~28_combout\);

-- Location: LCCOMB_X23_Y23_N22
\Mux100~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~19_combout\ = (\Mux100~28_combout\ & ((\Mux46~10_combout\) # ((\Mux20~0_combout\)))) # (!\Mux100~28_combout\ & (\Mux46~10_combout\ $ ((!\Mux100~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~10_combout\,
	datab => \Mux100~27_combout\,
	datac => \Mux100~28_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux100~19_combout\);

-- Location: LCCOMB_X23_Y23_N8
\Mux46~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~80_combout\ = (\hvsync_gen|local_vpos\(5) & (((\Mux20~0_combout\)))) # (!\hvsync_gen|local_vpos\(5) & (((!\Mux71~0_combout\)) # (!\hvsync_gen|local_vpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(5),
	datac => \Mux71~0_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux46~80_combout\);

-- Location: LCCOMB_X23_Y23_N10
\Mux100~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~20_combout\ = (\Mux46~10_combout\ & ((\Mux46~80_combout\) # ((\Mux84~11_combout\ & \Mux46~52_combout\)))) # (!\Mux46~10_combout\ & (\Mux84~11_combout\ & ((\Mux46~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~10_combout\,
	datab => \Mux84~11_combout\,
	datac => \Mux46~80_combout\,
	datad => \Mux46~52_combout\,
	combout => \Mux100~20_combout\);

-- Location: LCCOMB_X22_Y23_N24
\Mux100~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~21_combout\ = (!\Mux3~4_combout\ & (!\Mux3~1_combout\ & (\Mux46~11_combout\ & !\hvsync_gen|local_vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux46~11_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux100~21_combout\);

-- Location: LCCOMB_X23_Y23_N12
\Mux100~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~29_combout\ = (\Mux20~0_combout\ & ((\hvsync_gen|local_vpos\(1) & (!\hvsync_gen|local_vpos\(2))) # (!\hvsync_gen|local_vpos\(1) & ((\hvsync_gen|local_vpos\(2)) # (\hvsync_gen|local_vpos\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux20~0_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux100~29_combout\);

-- Location: LCCOMB_X23_Y23_N4
\Mux100~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~22_combout\ = (\Mux100~20_combout\) # ((\hvsync_gen|local_vpos\(4) & ((\Mux100~21_combout\) # (\Mux100~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux100~20_combout\,
	datab => \Mux100~21_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux100~29_combout\,
	combout => \Mux100~22_combout\);

-- Location: LCCOMB_X23_Y23_N6
\Mux100~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~23_combout\ = (\hvsync_gen|local_vpos\(6) & (((\hvsync_gen|local_vpos\(3))))) # (!\hvsync_gen|local_vpos\(6) & ((\hvsync_gen|local_vpos\(3) & (\Mux100~19_combout\)) # (!\hvsync_gen|local_vpos\(3) & ((\Mux100~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux100~19_combout\,
	datab => \hvsync_gen|local_vpos\(6),
	datac => \Mux100~22_combout\,
	datad => \hvsync_gen|local_vpos\(3),
	combout => \Mux100~23_combout\);

-- Location: LCCOMB_X23_Y21_N2
\Mux46~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~82_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|local_vpos\(0) & (\Mux20~0_combout\)) # (!\hvsync_gen|local_vpos\(0) & ((!\Mux71~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \Mux20~0_combout\,
	datac => \hvsync_gen|local_vpos\(0),
	datad => \Mux71~0_combout\,
	combout => \Mux46~82_combout\);

-- Location: LCCOMB_X23_Y21_N22
\Mux46~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~81_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux46~52_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux46~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \Mux46~37_combout\,
	datac => \Mux46~52_combout\,
	datad => \hvsync_gen|local_vpos\(5),
	combout => \Mux46~81_combout\);

-- Location: LCCOMB_X23_Y21_N24
\Mux100~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~24_combout\ = (\hvsync_gen|local_vpos\(2) & (((\hvsync_gen|local_vpos\(1)) # (\Mux46~68_combout\)))) # (!\hvsync_gen|local_vpos\(2) & (\Mux46~62_combout\ & (!\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \Mux46~62_combout\,
	datac => \hvsync_gen|local_vpos\(1),
	datad => \Mux46~68_combout\,
	combout => \Mux100~24_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Mux100~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~25_combout\ = (\hvsync_gen|local_vpos\(1) & ((\Mux100~24_combout\ & (\Mux46~82_combout\)) # (!\Mux100~24_combout\ & ((\Mux46~81_combout\))))) # (!\hvsync_gen|local_vpos\(1) & (((\Mux100~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(1),
	datab => \Mux46~82_combout\,
	datac => \Mux46~81_combout\,
	datad => \Mux100~24_combout\,
	combout => \Mux100~25_combout\);

-- Location: LCCOMB_X23_Y23_N0
\Mux100~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~15_combout\ = (\hvsync_gen|local_vpos\(0) & ((\LessThan2~0_combout\ & (\Mux20~0_combout\)) # (!\LessThan2~0_combout\ & ((\Mux81~1_combout\))))) # (!\hvsync_gen|local_vpos\(0) & (\Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \Mux20~0_combout\,
	datac => \Mux81~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Mux100~15_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Mux100~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~16_combout\ = (!\hvsync_gen|local_vpos\(5) & ((\Mux46~52_combout\) # ((\hvsync_gen|local_vpos\(4) & \Mux100~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~52_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \Mux100~15_combout\,
	combout => \Mux100~16_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Mux100~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux100~26_combout\ = (\Mux100~23_combout\ & (((\Mux100~25_combout\)) # (!\hvsync_gen|local_vpos\(6)))) # (!\Mux100~23_combout\ & (\hvsync_gen|local_vpos\(6) & ((\Mux100~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux100~23_combout\,
	datab => \hvsync_gen|local_vpos\(6),
	datac => \Mux100~25_combout\,
	datad => \Mux100~16_combout\,
	combout => \Mux100~26_combout\);

-- Location: LCCOMB_X23_Y20_N16
\rgb_b~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~3_combout\ = (\hvsync_gen|display_on~1_combout\ & (\process_1~3_combout\ & (!\track_obstacle_inst|collision_detected~q\ & \Mux100~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|display_on~1_combout\,
	datab => \process_1~3_combout\,
	datac => \track_obstacle_inst|collision_detected~q\,
	datad => \Mux100~26_combout\,
	combout => \rgb_b~3_combout\);

-- Location: FF_X23_Y20_N17
\rgb_b[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_b~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_b[3]~reg0_q\);

-- Location: FF_X30_Y24_N17
\led_left~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \debouncer_left|debounced_signal~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_left~reg0_q\);

-- Location: LCCOMB_X15_Y23_N16
\led_right~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_right~reg0feeder_combout\ = \debouncer_right|debounced_signal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncer_right|debounced_signal~q\,
	combout => \led_right~reg0feeder_combout\);

-- Location: FF_X15_Y23_N17
\led_right~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \led_right~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_right~reg0_q\);
END structure;


