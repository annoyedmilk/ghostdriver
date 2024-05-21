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

-- DATE "05/21/2024 20:51:20"

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
SIGNAL \hvsync_gen|Add0~11\ : std_logic;
SIGNAL \hvsync_gen|Add0~12_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~13\ : std_logic;
SIGNAL \hvsync_gen|Add0~14_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~15\ : std_logic;
SIGNAL \hvsync_gen|Add0~16_combout\ : std_logic;
SIGNAL \hvsync_gen|local_hpos~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add0~17\ : std_logic;
SIGNAL \hvsync_gen|Add0~18_combout\ : std_logic;
SIGNAL \hvsync_gen|local_hpos~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal0~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal0~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal0~2_combout\ : std_logic;
SIGNAL \hvsync_gen|local_hpos~0_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~0_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~1_combout\ : std_logic;
SIGNAL \hvsync_gen|hsync~q\ : std_logic;
SIGNAL \hvsync_gen|Add1~0_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~1\ : std_logic;
SIGNAL \hvsync_gen|Add1~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~3\ : std_logic;
SIGNAL \hvsync_gen|Add1~4_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~3_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~5\ : std_logic;
SIGNAL \hvsync_gen|Add1~6_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~7\ : std_logic;
SIGNAL \hvsync_gen|Add1~8_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~9\ : std_logic;
SIGNAL \hvsync_gen|Add1~10_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~11\ : std_logic;
SIGNAL \hvsync_gen|Add1~12_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~13\ : std_logic;
SIGNAL \hvsync_gen|Add1~14_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~15\ : std_logic;
SIGNAL \hvsync_gen|Add1~16_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal1~1_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal1~0_combout\ : std_logic;
SIGNAL \hvsync_gen|Equal1~2_combout\ : std_logic;
SIGNAL \hvsync_gen|Add1~17\ : std_logic;
SIGNAL \hvsync_gen|Add1~18_combout\ : std_logic;
SIGNAL \hvsync_gen|local_vpos~2_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~3_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~2_combout\ : std_logic;
SIGNAL \hvsync_gen|process_0~4_combout\ : std_logic;
SIGNAL \hvsync_gen|vsync~q\ : std_logic;
SIGNAL \hvsync_gen|LessThan4~0_combout\ : std_logic;
SIGNAL \rgb_g~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][0]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][8]~27\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][9]~28_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|slow_counter~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~1\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~3\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~5\ : std_logic;
SIGNAL \track_obstacle_inst|Add5~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~9_combout\ : std_logic;
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
SIGNAL \track_obstacle_inst|Equal0~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Equal0~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_y[0][9]~q\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan0~2_combout\ : std_logic;
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
SIGNAL \track_obstacle_inst|Add8~1\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~3\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~5\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~7\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~9\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~11\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|lfsr_reg~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[0]~25_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[0]~27_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~56_combout\ : std_logic;
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
SIGNAL \track_obstacle_inst|random_seed[8]~13_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~15_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[8]~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~17_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~19_combout\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|random_seed[9]~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][8]~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~1_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][9]~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~9_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~11_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][7]~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~13_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~15_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][6]~14_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add8~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan7~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~21_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~23_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][4]~22_combout\ : std_logic;
SIGNAL \track_obstacle_inst|Add0~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~17_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~19_combout\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~_emulated_q\ : std_logic;
SIGNAL \track_obstacle_inst|obstacle_x[0][5]~18_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_0~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|collision_detected~q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~8_combout\ : std_logic;
SIGNAL \btn_right~input_o\ : std_logic;
SIGNAL \debouncer_right|counter[0]~32_combout\ : std_logic;
SIGNAL \debouncer_right|debouncing~0_combout\ : std_logic;
SIGNAL \debouncer_right|debouncing~q\ : std_logic;
SIGNAL \debouncer_right|counter[8]~96_combout\ : std_logic;
SIGNAL \debouncer_right|counter[8]~97_combout\ : std_logic;
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
SIGNAL \debouncer_right|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer_right|counter[8]~49\ : std_logic;
SIGNAL \debouncer_right|counter[9]~50_combout\ : std_logic;
SIGNAL \debouncer_right|counter[9]~51\ : std_logic;
SIGNAL \debouncer_right|counter[10]~52_combout\ : std_logic;
SIGNAL \debouncer_right|counter[10]~53\ : std_logic;
SIGNAL \debouncer_right|counter[11]~54_combout\ : std_logic;
SIGNAL \debouncer_right|counter[11]~55\ : std_logic;
SIGNAL \debouncer_right|counter[12]~56_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer_right|counter[12]~57\ : std_logic;
SIGNAL \debouncer_right|counter[13]~58_combout\ : std_logic;
SIGNAL \debouncer_right|counter[13]~59\ : std_logic;
SIGNAL \debouncer_right|counter[14]~60_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer_right|counter[14]~61\ : std_logic;
SIGNAL \debouncer_right|counter[15]~62_combout\ : std_logic;
SIGNAL \debouncer_right|counter[15]~63\ : std_logic;
SIGNAL \debouncer_right|counter[16]~64_combout\ : std_logic;
SIGNAL \debouncer_right|counter[16]~65\ : std_logic;
SIGNAL \debouncer_right|counter[17]~66_combout\ : std_logic;
SIGNAL \debouncer_right|counter[17]~67\ : std_logic;
SIGNAL \debouncer_right|counter[18]~68_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~7_combout\ : std_logic;
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
SIGNAL \debouncer_right|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer_right|LessThan0~8_combout\ : std_logic;
SIGNAL \debouncer_right|debounced_signal~0_combout\ : std_logic;
SIGNAL \debouncer_right|debounced_signal~q\ : std_logic;
SIGNAL \car_control_inst|x_pos[1]~9_combout\ : std_logic;
SIGNAL \debouncer_left|counter[0]~32_combout\ : std_logic;
SIGNAL \btn_left~input_o\ : std_logic;
SIGNAL \debouncer_left|debouncing~0_combout\ : std_logic;
SIGNAL \debouncer_left|debouncing~q\ : std_logic;
SIGNAL \debouncer_left|counter[7]~96_combout\ : std_logic;
SIGNAL \debouncer_left|counter[7]~97_combout\ : std_logic;
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
SIGNAL \debouncer_left|LessThan0~7_combout\ : std_logic;
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
SIGNAL \debouncer_left|counter[30]~93\ : std_logic;
SIGNAL \debouncer_left|counter[31]~94_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer_left|LessThan0~8_combout\ : std_logic;
SIGNAL \debouncer_left|debounced_signal~0_combout\ : std_logic;
SIGNAL \debouncer_left|debounced_signal~q\ : std_logic;
SIGNAL \car_control_inst|left_prev~q\ : std_logic;
SIGNAL \car_control_inst|x_pos[6]~20\ : std_logic;
SIGNAL \car_control_inst|x_pos[7]~21_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[7]~22\ : std_logic;
SIGNAL \car_control_inst|x_pos[8]~23_combout\ : std_logic;
SIGNAL \car_control_inst|process_0~0_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[9]~27_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[9]~28_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[9]~29_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[1]~10\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~11_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[2]~12\ : std_logic;
SIGNAL \car_control_inst|x_pos[3]~13_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[3]~14\ : std_logic;
SIGNAL \car_control_inst|x_pos[4]~15_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[4]~16\ : std_logic;
SIGNAL \car_control_inst|x_pos[5]~17_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[5]~18\ : std_logic;
SIGNAL \car_control_inst|x_pos[6]~19_combout\ : std_logic;
SIGNAL \car_control_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \car_control_inst|process_0~1_combout\ : std_logic;
SIGNAL \car_control_inst|right_prev~q\ : std_logic;
SIGNAL \car_control_inst|process_0~2_combout\ : std_logic;
SIGNAL \car_control_inst|x_pos[8]~24\ : std_logic;
SIGNAL \car_control_inst|x_pos[9]~25_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
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
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \rgb_r~0_combout\ : std_logic;
SIGNAL \rgb_r~1_combout\ : std_logic;
SIGNAL \rgb_r[0]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_r[0]~reg0_q\ : std_logic;
SIGNAL \rgb_r[1]~reg0_q\ : std_logic;
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
SIGNAL \track_obstacle_inst|process_1~10_combout\ : std_logic;
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
SIGNAL \track_obstacle_inst|track_color~11_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~3_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~4_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~2_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~5_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~9_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~6_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~7_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~8_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~9_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~10_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~12_combout\ : std_logic;
SIGNAL \rgb_r~2_combout\ : std_logic;
SIGNAL \rgb_r[2]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~13_combout\ : std_logic;
SIGNAL \track_obstacle_inst|process_1~11_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~14_combout\ : std_logic;
SIGNAL \rgb_r~3_combout\ : std_logic;
SIGNAL \rgb_r[3]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~15_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~16_combout\ : std_logic;
SIGNAL \rgb_r~4_combout\ : std_logic;
SIGNAL \rgb_g~1_combout\ : std_logic;
SIGNAL \rgb_g[0]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_g[0]~reg0_q\ : std_logic;
SIGNAL \rgb_g[1]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~21_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~17_combout\ : std_logic;
SIGNAL \rgb_g~2_combout\ : std_logic;
SIGNAL \rgb_g[2]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~22_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~18_combout\ : std_logic;
SIGNAL \rgb_g~3_combout\ : std_logic;
SIGNAL \rgb_g[3]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~23_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~19_combout\ : std_logic;
SIGNAL \rgb_b~0_combout\ : std_logic;
SIGNAL \rgb_b[0]~reg0_q\ : std_logic;
SIGNAL \rgb_b[1]~reg0_q\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~24_combout\ : std_logic;
SIGNAL \track_obstacle_inst|track_color~20_combout\ : std_logic;
SIGNAL \rgb_b~1_combout\ : std_logic;
SIGNAL \rgb_b[2]~reg0_q\ : std_logic;
SIGNAL \rgb_b~2_combout\ : std_logic;
SIGNAL \rgb_b[3]~reg0_q\ : std_logic;
SIGNAL \led_left~reg0feeder_combout\ : std_logic;
SIGNAL \led_left~reg0_q\ : std_logic;
SIGNAL \led_right~reg0_q\ : std_logic;
SIGNAL \car_control_inst|x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \hvsync_gen|local_vpos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \debouncer_left|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debouncer_right|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \track_obstacle_inst|slow_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \track_obstacle_inst|track_color\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \hvsync_gen|local_hpos\ : std_logic_vector(9 DOWNTO 0);

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
	pll_compensation_delay => 5738,
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

-- Location: LCCOMB_X21_Y22_N6
\hvsync_gen|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~0_combout\ = \hvsync_gen|local_hpos\(0) $ (VCC)
-- \hvsync_gen|Add0~1\ = CARRY(\hvsync_gen|local_hpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(0),
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

-- Location: FF_X21_Y22_N7
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

-- Location: LCCOMB_X21_Y22_N8
\hvsync_gen|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~2_combout\ = (\hvsync_gen|local_hpos\(1) & (!\hvsync_gen|Add0~1\)) # (!\hvsync_gen|local_hpos\(1) & ((\hvsync_gen|Add0~1\) # (GND)))
-- \hvsync_gen|Add0~3\ = CARRY((!\hvsync_gen|Add0~1\) # (!\hvsync_gen|local_hpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(1),
	datad => VCC,
	cin => \hvsync_gen|Add0~1\,
	combout => \hvsync_gen|Add0~2_combout\,
	cout => \hvsync_gen|Add0~3\);

-- Location: FF_X21_Y22_N9
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

-- Location: LCCOMB_X21_Y22_N10
\hvsync_gen|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~4_combout\ = (\hvsync_gen|local_hpos\(2) & (\hvsync_gen|Add0~3\ $ (GND))) # (!\hvsync_gen|local_hpos\(2) & (!\hvsync_gen|Add0~3\ & VCC))
-- \hvsync_gen|Add0~5\ = CARRY((\hvsync_gen|local_hpos\(2) & !\hvsync_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datad => VCC,
	cin => \hvsync_gen|Add0~3\,
	combout => \hvsync_gen|Add0~4_combout\,
	cout => \hvsync_gen|Add0~5\);

-- Location: FF_X21_Y22_N11
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

-- Location: LCCOMB_X21_Y22_N12
\hvsync_gen|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~6_combout\ = (\hvsync_gen|local_hpos\(3) & (!\hvsync_gen|Add0~5\)) # (!\hvsync_gen|local_hpos\(3) & ((\hvsync_gen|Add0~5\) # (GND)))
-- \hvsync_gen|Add0~7\ = CARRY((!\hvsync_gen|Add0~5\) # (!\hvsync_gen|local_hpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(3),
	datad => VCC,
	cin => \hvsync_gen|Add0~5\,
	combout => \hvsync_gen|Add0~6_combout\,
	cout => \hvsync_gen|Add0~7\);

-- Location: FF_X21_Y22_N13
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

-- Location: LCCOMB_X21_Y22_N14
\hvsync_gen|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~8_combout\ = (\hvsync_gen|local_hpos\(4) & (\hvsync_gen|Add0~7\ $ (GND))) # (!\hvsync_gen|local_hpos\(4) & (!\hvsync_gen|Add0~7\ & VCC))
-- \hvsync_gen|Add0~9\ = CARRY((\hvsync_gen|local_hpos\(4) & !\hvsync_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(4),
	datad => VCC,
	cin => \hvsync_gen|Add0~7\,
	combout => \hvsync_gen|Add0~8_combout\,
	cout => \hvsync_gen|Add0~9\);

-- Location: FF_X21_Y22_N15
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

-- Location: LCCOMB_X21_Y22_N16
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

-- Location: LCCOMB_X21_Y22_N18
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

-- Location: FF_X21_Y22_N19
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

-- Location: LCCOMB_X21_Y22_N20
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

-- Location: FF_X21_Y22_N21
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

-- Location: LCCOMB_X21_Y22_N22
\hvsync_gen|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add0~16_combout\ = (\hvsync_gen|local_hpos\(8) & (\hvsync_gen|Add0~15\ $ (GND))) # (!\hvsync_gen|local_hpos\(8) & (!\hvsync_gen|Add0~15\ & VCC))
-- \hvsync_gen|Add0~17\ = CARRY((\hvsync_gen|local_hpos\(8) & !\hvsync_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(8),
	datad => VCC,
	cin => \hvsync_gen|Add0~15\,
	combout => \hvsync_gen|Add0~16_combout\,
	cout => \hvsync_gen|Add0~17\);

-- Location: LCCOMB_X21_Y22_N28
\hvsync_gen|local_hpos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_hpos~2_combout\ = (!\hvsync_gen|Equal0~2_combout\ & \hvsync_gen|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Equal0~2_combout\,
	datac => \hvsync_gen|Add0~16_combout\,
	combout => \hvsync_gen|local_hpos~2_combout\);

-- Location: FF_X21_Y22_N29
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

-- Location: LCCOMB_X21_Y22_N24
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

-- Location: LCCOMB_X21_Y22_N2
\hvsync_gen|local_hpos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_hpos~1_combout\ = (\hvsync_gen|Add0~18_combout\ & !\hvsync_gen|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Add0~18_combout\,
	datac => \hvsync_gen|Equal0~2_combout\,
	combout => \hvsync_gen|local_hpos~1_combout\);

-- Location: FF_X21_Y22_N3
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

-- Location: LCCOMB_X21_Y22_N26
\hvsync_gen|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal0~1_combout\ = (\hvsync_gen|local_hpos\(2) & (!\hvsync_gen|local_hpos\(6) & (\hvsync_gen|local_hpos\(1) & \hvsync_gen|local_hpos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \hvsync_gen|local_hpos\(6),
	datac => \hvsync_gen|local_hpos\(1),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \hvsync_gen|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y20_N0
\hvsync_gen|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal0~0_combout\ = (!\hvsync_gen|local_hpos\(5) & (!\hvsync_gen|local_hpos\(7) & (\hvsync_gen|local_hpos\(3) & \hvsync_gen|local_hpos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \hvsync_gen|local_hpos\(7),
	datac => \hvsync_gen|local_hpos\(3),
	datad => \hvsync_gen|local_hpos\(8),
	combout => \hvsync_gen|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y22_N4
\hvsync_gen|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal0~2_combout\ = (\hvsync_gen|Equal0~1_combout\ & (\hvsync_gen|Equal0~0_combout\ & (\hvsync_gen|local_hpos\(4) & \hvsync_gen|local_hpos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|Equal0~1_combout\,
	datab => \hvsync_gen|Equal0~0_combout\,
	datac => \hvsync_gen|local_hpos\(4),
	datad => \hvsync_gen|local_hpos\(0),
	combout => \hvsync_gen|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y22_N0
\hvsync_gen|local_hpos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_hpos~0_combout\ = (\hvsync_gen|Add0~10_combout\ & !\hvsync_gen|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Add0~10_combout\,
	datac => \hvsync_gen|Equal0~2_combout\,
	combout => \hvsync_gen|local_hpos~0_combout\);

-- Location: FF_X21_Y22_N1
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

-- Location: LCCOMB_X21_Y21_N2
\hvsync_gen|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~0_combout\ = ((\hvsync_gen|local_hpos\(5) & (\hvsync_gen|local_hpos\(6) & \hvsync_gen|local_hpos\(4))) # (!\hvsync_gen|local_hpos\(5) & (!\hvsync_gen|local_hpos\(6) & !\hvsync_gen|local_hpos\(4)))) # (!\hvsync_gen|local_hpos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \hvsync_gen|local_hpos\(6),
	datac => \hvsync_gen|local_hpos\(4),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \hvsync_gen|process_0~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\hvsync_gen|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~1_combout\ = (\hvsync_gen|process_0~0_combout\) # ((\hvsync_gen|local_hpos\(8)) # (!\hvsync_gen|local_hpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|process_0~0_combout\,
	datac => \hvsync_gen|local_hpos\(8),
	datad => \hvsync_gen|local_hpos\(7),
	combout => \hvsync_gen|process_0~1_combout\);

-- Location: FF_X21_Y21_N9
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

-- Location: LCCOMB_X24_Y23_N0
\hvsync_gen|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~0_combout\ = \hvsync_gen|local_vpos\(0) $ (VCC)
-- \hvsync_gen|Add1~1\ = CARRY(\hvsync_gen|local_vpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(0),
	datad => VCC,
	combout => \hvsync_gen|Add1~0_combout\,
	cout => \hvsync_gen|Add1~1\);

-- Location: LCCOMB_X23_Y23_N0
\hvsync_gen|local_vpos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~0_combout\ = (\hvsync_gen|Add1~0_combout\ & !\hvsync_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|Add1~0_combout\,
	datad => \hvsync_gen|Equal1~2_combout\,
	combout => \hvsync_gen|local_vpos~0_combout\);

-- Location: FF_X23_Y23_N1
\hvsync_gen|local_vpos[0]\ : dffeas
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
	q => \hvsync_gen|local_vpos\(0));

-- Location: LCCOMB_X24_Y23_N2
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

-- Location: FF_X24_Y23_N3
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

-- Location: LCCOMB_X24_Y23_N4
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

-- Location: LCCOMB_X23_Y23_N22
\hvsync_gen|local_vpos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~3_combout\ = (!\hvsync_gen|Equal1~2_combout\ & \hvsync_gen|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Equal1~2_combout\,
	datad => \hvsync_gen|Add1~4_combout\,
	combout => \hvsync_gen|local_vpos~3_combout\);

-- Location: FF_X23_Y23_N23
\hvsync_gen|local_vpos[2]\ : dffeas
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
	q => \hvsync_gen|local_vpos\(2));

-- Location: LCCOMB_X24_Y23_N6
\hvsync_gen|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~6_combout\ = (\hvsync_gen|local_vpos\(3) & (!\hvsync_gen|Add1~5\)) # (!\hvsync_gen|local_vpos\(3) & ((\hvsync_gen|Add1~5\) # (GND)))
-- \hvsync_gen|Add1~7\ = CARRY((!\hvsync_gen|Add1~5\) # (!\hvsync_gen|local_vpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datad => VCC,
	cin => \hvsync_gen|Add1~5\,
	combout => \hvsync_gen|Add1~6_combout\,
	cout => \hvsync_gen|Add1~7\);

-- Location: LCCOMB_X23_Y23_N10
\hvsync_gen|local_vpos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~1_combout\ = (!\hvsync_gen|Equal1~2_combout\ & \hvsync_gen|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Equal1~2_combout\,
	datad => \hvsync_gen|Add1~6_combout\,
	combout => \hvsync_gen|local_vpos~1_combout\);

-- Location: FF_X23_Y23_N11
\hvsync_gen|local_vpos[3]\ : dffeas
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
	q => \hvsync_gen|local_vpos\(3));

-- Location: LCCOMB_X24_Y23_N8
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

-- Location: FF_X24_Y23_N9
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

-- Location: LCCOMB_X24_Y23_N10
\hvsync_gen|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~10_combout\ = (\hvsync_gen|local_vpos\(5) & (!\hvsync_gen|Add1~9\)) # (!\hvsync_gen|local_vpos\(5) & ((\hvsync_gen|Add1~9\) # (GND)))
-- \hvsync_gen|Add1~11\ = CARRY((!\hvsync_gen|Add1~9\) # (!\hvsync_gen|local_vpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datad => VCC,
	cin => \hvsync_gen|Add1~9\,
	combout => \hvsync_gen|Add1~10_combout\,
	cout => \hvsync_gen|Add1~11\);

-- Location: FF_X24_Y23_N11
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

-- Location: LCCOMB_X24_Y23_N12
\hvsync_gen|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~12_combout\ = (\hvsync_gen|local_vpos\(6) & (\hvsync_gen|Add1~11\ $ (GND))) # (!\hvsync_gen|local_vpos\(6) & (!\hvsync_gen|Add1~11\ & VCC))
-- \hvsync_gen|Add1~13\ = CARRY((\hvsync_gen|local_vpos\(6) & !\hvsync_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(6),
	datad => VCC,
	cin => \hvsync_gen|Add1~11\,
	combout => \hvsync_gen|Add1~12_combout\,
	cout => \hvsync_gen|Add1~13\);

-- Location: FF_X24_Y23_N13
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

-- Location: LCCOMB_X24_Y23_N14
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

-- Location: FF_X24_Y23_N15
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

-- Location: LCCOMB_X24_Y23_N16
\hvsync_gen|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Add1~16_combout\ = (\hvsync_gen|local_vpos\(8) & (\hvsync_gen|Add1~15\ $ (GND))) # (!\hvsync_gen|local_vpos\(8) & (!\hvsync_gen|Add1~15\ & VCC))
-- \hvsync_gen|Add1~17\ = CARRY((\hvsync_gen|local_vpos\(8) & !\hvsync_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_vpos\(8),
	datad => VCC,
	cin => \hvsync_gen|Add1~15\,
	combout => \hvsync_gen|Add1~16_combout\,
	cout => \hvsync_gen|Add1~17\);

-- Location: FF_X24_Y23_N17
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

-- Location: LCCOMB_X24_Y23_N20
\hvsync_gen|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal1~1_combout\ = (!\hvsync_gen|local_vpos\(6) & (\hvsync_gen|local_vpos\(9) & (!\hvsync_gen|local_vpos\(7) & !\hvsync_gen|local_vpos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(6),
	datab => \hvsync_gen|local_vpos\(9),
	datac => \hvsync_gen|local_vpos\(7),
	datad => \hvsync_gen|local_vpos\(8),
	combout => \hvsync_gen|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y23_N26
\hvsync_gen|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal1~0_combout\ = (\hvsync_gen|local_vpos\(3) & (!\hvsync_gen|local_vpos\(0) & (!\hvsync_gen|local_vpos\(4) & !\hvsync_gen|local_vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \hvsync_gen|local_vpos\(0),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \hvsync_gen|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y23_N22
\hvsync_gen|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|Equal1~2_combout\ = (!\hvsync_gen|local_vpos\(5) & (\hvsync_gen|Equal1~1_combout\ & (\hvsync_gen|Equal1~0_combout\ & \hvsync_gen|local_vpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(5),
	datab => \hvsync_gen|Equal1~1_combout\,
	datac => \hvsync_gen|Equal1~0_combout\,
	datad => \hvsync_gen|local_vpos\(2),
	combout => \hvsync_gen|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y23_N18
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

-- Location: LCCOMB_X23_Y23_N28
\hvsync_gen|local_vpos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|local_vpos~2_combout\ = (!\hvsync_gen|Equal1~2_combout\ & \hvsync_gen|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|Equal1~2_combout\,
	datad => \hvsync_gen|Add1~18_combout\,
	combout => \hvsync_gen|local_vpos~2_combout\);

-- Location: FF_X23_Y23_N29
\hvsync_gen|local_vpos[9]\ : dffeas
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
	q => \hvsync_gen|local_vpos\(9));

-- Location: LCCOMB_X24_Y24_N4
\hvsync_gen|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~3_combout\ = (\hvsync_gen|local_vpos\(7) & (\hvsync_gen|local_vpos\(8) & (\hvsync_gen|local_vpos\(5) & \hvsync_gen|local_vpos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(7),
	datab => \hvsync_gen|local_vpos\(8),
	datac => \hvsync_gen|local_vpos\(5),
	datad => \hvsync_gen|local_vpos\(6),
	combout => \hvsync_gen|process_0~3_combout\);

-- Location: LCCOMB_X24_Y24_N2
\hvsync_gen|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~2_combout\ = (\hvsync_gen|local_vpos\(4)) # (((!\hvsync_gen|local_vpos\(0) & !\hvsync_gen|local_vpos\(1))) # (!\hvsync_gen|local_vpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(4),
	datab => \hvsync_gen|local_vpos\(3),
	datac => \hvsync_gen|local_vpos\(0),
	datad => \hvsync_gen|local_vpos\(1),
	combout => \hvsync_gen|process_0~2_combout\);

-- Location: LCCOMB_X24_Y24_N8
\hvsync_gen|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|process_0~4_combout\ = (\hvsync_gen|local_vpos\(9)) # (((\hvsync_gen|local_vpos\(2)) # (\hvsync_gen|process_0~2_combout\)) # (!\hvsync_gen|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(9),
	datab => \hvsync_gen|process_0~3_combout\,
	datac => \hvsync_gen|local_vpos\(2),
	datad => \hvsync_gen|process_0~2_combout\,
	combout => \hvsync_gen|process_0~4_combout\);

-- Location: FF_X24_Y24_N9
\hvsync_gen|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hvsync_gen|process_0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync_gen|vsync~q\);

-- Location: LCCOMB_X21_Y21_N4
\hvsync_gen|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hvsync_gen|LessThan4~0_combout\ = (!\hvsync_gen|local_hpos\(8) & !\hvsync_gen|local_hpos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync_gen|local_hpos\(8),
	datad => \hvsync_gen|local_hpos\(7),
	combout => \hvsync_gen|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y24_N30
\rgb_g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g~0_combout\ = (!\hvsync_gen|process_0~3_combout\ & (!\hvsync_gen|local_vpos\(9) & ((\hvsync_gen|LessThan4~0_combout\) # (!\hvsync_gen|local_hpos\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|LessThan4~0_combout\,
	datab => \hvsync_gen|process_0~3_combout\,
	datac => \hvsync_gen|local_vpos\(9),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \rgb_g~0_combout\);

-- Location: LCCOMB_X22_Y24_N4
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

-- Location: LCCOMB_X22_Y24_N24
\track_obstacle_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan0~0_combout\ = (!\track_obstacle_inst|obstacle_y[0][4]~q\ & (!\track_obstacle_inst|obstacle_y[0][2]~q\ & !\track_obstacle_inst|obstacle_y[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datac => \track_obstacle_inst|obstacle_y[0][2]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][3]~q\,
	combout => \track_obstacle_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y24_N26
\track_obstacle_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan0~1_combout\ = (\track_obstacle_inst|obstacle_y[0][0]~q\) # ((\track_obstacle_inst|obstacle_y[0][1]~q\) # (!\track_obstacle_inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][0]~q\,
	datab => \track_obstacle_inst|LessThan0~0_combout\,
	datad => \track_obstacle_inst|obstacle_y[0][1]~q\,
	combout => \track_obstacle_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y24_N20
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

-- Location: LCCOMB_X22_Y24_N22
\track_obstacle_inst|obstacle_y[0][9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][9]~28_combout\ = \track_obstacle_inst|obstacle_y[0][8]~27\ $ (\track_obstacle_inst|obstacle_y[0][9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \track_obstacle_inst|obstacle_y[0][9]~q\,
	cin => \track_obstacle_inst|obstacle_y[0][8]~27\,
	combout => \track_obstacle_inst|obstacle_y[0][9]~28_combout\);

-- Location: LCCOMB_X14_Y25_N0
\track_obstacle_inst|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~0_combout\ = \track_obstacle_inst|slow_counter\(0) $ (VCC)
-- \track_obstacle_inst|Add5~1\ = CARRY(\track_obstacle_inst|slow_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(0),
	datad => VCC,
	combout => \track_obstacle_inst|Add5~0_combout\,
	cout => \track_obstacle_inst|Add5~1\);

-- Location: LCCOMB_X15_Y25_N0
\track_obstacle_inst|slow_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~6_combout\ = (\track_obstacle_inst|Add5~0_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Add5~0_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~6_combout\);

-- Location: FF_X15_Y25_N1
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

-- Location: LCCOMB_X14_Y25_N2
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

-- Location: FF_X14_Y25_N3
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

-- Location: LCCOMB_X14_Y25_N4
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

-- Location: FF_X14_Y25_N5
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

-- Location: LCCOMB_X14_Y25_N6
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

-- Location: FF_X14_Y25_N7
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

-- Location: LCCOMB_X15_Y25_N10
\track_obstacle_inst|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~9_combout\ = (!\track_obstacle_inst|slow_counter\(1) & (!\track_obstacle_inst|slow_counter\(2) & (!\track_obstacle_inst|slow_counter\(3) & !\track_obstacle_inst|slow_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(1),
	datab => \track_obstacle_inst|slow_counter\(2),
	datac => \track_obstacle_inst|slow_counter\(3),
	datad => \track_obstacle_inst|slow_counter\(0),
	combout => \track_obstacle_inst|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y25_N8
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

-- Location: FF_X14_Y25_N9
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

-- Location: LCCOMB_X14_Y25_N10
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

-- Location: FF_X14_Y25_N11
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

-- Location: LCCOMB_X14_Y25_N12
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

-- Location: LCCOMB_X15_Y25_N4
\track_obstacle_inst|slow_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~5_combout\ = (\track_obstacle_inst|Add5~12_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add5~12_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~5_combout\);

-- Location: FF_X15_Y25_N5
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

-- Location: LCCOMB_X14_Y25_N14
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

-- Location: FF_X14_Y25_N15
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

-- Location: LCCOMB_X14_Y25_N16
\track_obstacle_inst|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~16_combout\ = (\track_obstacle_inst|slow_counter\(8) & (\track_obstacle_inst|Add5~15\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(8) & (!\track_obstacle_inst|Add5~15\ & VCC))
-- \track_obstacle_inst|Add5~17\ = CARRY((\track_obstacle_inst|slow_counter\(8) & !\track_obstacle_inst|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(8),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~15\,
	combout => \track_obstacle_inst|Add5~16_combout\,
	cout => \track_obstacle_inst|Add5~17\);

-- Location: LCCOMB_X15_Y25_N6
\track_obstacle_inst|slow_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~4_combout\ = (\track_obstacle_inst|Add5~16_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Add5~16_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~4_combout\);

-- Location: FF_X15_Y25_N7
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

-- Location: LCCOMB_X14_Y25_N18
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

-- Location: FF_X14_Y25_N19
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

-- Location: LCCOMB_X14_Y25_N20
\track_obstacle_inst|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~20_combout\ = (\track_obstacle_inst|slow_counter\(10) & (\track_obstacle_inst|Add5~19\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(10) & (!\track_obstacle_inst|Add5~19\ & VCC))
-- \track_obstacle_inst|Add5~21\ = CARRY((\track_obstacle_inst|slow_counter\(10) & !\track_obstacle_inst|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(10),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~19\,
	combout => \track_obstacle_inst|Add5~20_combout\,
	cout => \track_obstacle_inst|Add5~21\);

-- Location: LCCOMB_X15_Y25_N28
\track_obstacle_inst|slow_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~3_combout\ = (\track_obstacle_inst|Add5~20_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add5~20_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~3_combout\);

-- Location: FF_X15_Y25_N29
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

-- Location: LCCOMB_X14_Y25_N22
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

-- Location: LCCOMB_X15_Y25_N2
\track_obstacle_inst|slow_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~2_combout\ = (\track_obstacle_inst|Add5~22_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add5~22_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~2_combout\);

-- Location: FF_X15_Y25_N3
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

-- Location: LCCOMB_X14_Y25_N24
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

-- Location: FF_X14_Y25_N25
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

-- Location: LCCOMB_X14_Y25_N26
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

-- Location: FF_X14_Y25_N27
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

-- Location: LCCOMB_X14_Y25_N28
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

-- Location: FF_X14_Y25_N29
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

-- Location: LCCOMB_X14_Y25_N30
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

-- Location: FF_X14_Y25_N31
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

-- Location: LCCOMB_X14_Y24_N0
\track_obstacle_inst|Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~32_combout\ = (\track_obstacle_inst|slow_counter\(16) & (\track_obstacle_inst|Add5~31\ $ (GND))) # (!\track_obstacle_inst|slow_counter\(16) & (!\track_obstacle_inst|Add5~31\ & VCC))
-- \track_obstacle_inst|Add5~33\ = CARRY((\track_obstacle_inst|slow_counter\(16) & !\track_obstacle_inst|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|slow_counter\(16),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~31\,
	combout => \track_obstacle_inst|Add5~32_combout\,
	cout => \track_obstacle_inst|Add5~33\);

-- Location: LCCOMB_X15_Y25_N20
\track_obstacle_inst|slow_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~1_combout\ = (\track_obstacle_inst|Add5~32_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Add5~32_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~1_combout\);

-- Location: FF_X15_Y25_N21
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

-- Location: LCCOMB_X14_Y24_N2
\track_obstacle_inst|Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add5~34_combout\ = (\track_obstacle_inst|slow_counter\(17) & (!\track_obstacle_inst|Add5~33\)) # (!\track_obstacle_inst|slow_counter\(17) & ((\track_obstacle_inst|Add5~33\) # (GND)))
-- \track_obstacle_inst|Add5~35\ = CARRY((!\track_obstacle_inst|Add5~33\) # (!\track_obstacle_inst|slow_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(17),
	datad => VCC,
	cin => \track_obstacle_inst|Add5~33\,
	combout => \track_obstacle_inst|Add5~34_combout\,
	cout => \track_obstacle_inst|Add5~35\);

-- Location: LCCOMB_X15_Y25_N26
\track_obstacle_inst|slow_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|slow_counter~0_combout\ = (\track_obstacle_inst|Add5~34_combout\ & !\track_obstacle_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Add5~34_combout\,
	datad => \track_obstacle_inst|Equal0~10_combout\,
	combout => \track_obstacle_inst|slow_counter~0_combout\);

-- Location: FF_X15_Y25_N27
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

-- Location: LCCOMB_X14_Y24_N4
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

-- Location: FF_X14_Y24_N5
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

-- Location: LCCOMB_X14_Y24_N6
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

-- Location: FF_X14_Y24_N7
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

-- Location: LCCOMB_X14_Y24_N8
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

-- Location: FF_X14_Y24_N9
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

-- Location: LCCOMB_X14_Y24_N10
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

-- Location: FF_X14_Y24_N11
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

-- Location: LCCOMB_X14_Y24_N12
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

-- Location: FF_X14_Y24_N13
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

-- Location: LCCOMB_X14_Y24_N14
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

-- Location: FF_X14_Y24_N15
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

-- Location: LCCOMB_X15_Y24_N12
\track_obstacle_inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~2_combout\ = (!\track_obstacle_inst|slow_counter\(20) & (!\track_obstacle_inst|slow_counter\(22) & (!\track_obstacle_inst|slow_counter\(21) & !\track_obstacle_inst|slow_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(20),
	datab => \track_obstacle_inst|slow_counter\(22),
	datac => \track_obstacle_inst|slow_counter\(21),
	datad => \track_obstacle_inst|slow_counter\(23),
	combout => \track_obstacle_inst|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y24_N16
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

-- Location: FF_X14_Y24_N17
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

-- Location: LCCOMB_X14_Y24_N18
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

-- Location: FF_X14_Y24_N19
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

-- Location: LCCOMB_X14_Y24_N20
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

-- Location: FF_X14_Y24_N21
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

-- Location: LCCOMB_X14_Y24_N22
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

-- Location: FF_X14_Y24_N23
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

-- Location: LCCOMB_X14_Y24_N24
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

-- Location: FF_X14_Y24_N25
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

-- Location: LCCOMB_X14_Y24_N26
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

-- Location: FF_X14_Y24_N27
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

-- Location: LCCOMB_X14_Y24_N28
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

-- Location: FF_X14_Y24_N29
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

-- Location: LCCOMB_X14_Y24_N30
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

-- Location: FF_X14_Y24_N31
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

-- Location: LCCOMB_X15_Y24_N0
\track_obstacle_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~0_combout\ = (!\track_obstacle_inst|slow_counter\(30) & (!\track_obstacle_inst|slow_counter\(28) & (!\track_obstacle_inst|slow_counter\(29) & !\track_obstacle_inst|slow_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(30),
	datab => \track_obstacle_inst|slow_counter\(28),
	datac => \track_obstacle_inst|slow_counter\(29),
	datad => \track_obstacle_inst|slow_counter\(31),
	combout => \track_obstacle_inst|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y25_N30
\track_obstacle_inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~3_combout\ = (!\track_obstacle_inst|slow_counter\(18) & (!\track_obstacle_inst|slow_counter\(19) & (\track_obstacle_inst|slow_counter\(17) & \track_obstacle_inst|slow_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(18),
	datab => \track_obstacle_inst|slow_counter\(19),
	datac => \track_obstacle_inst|slow_counter\(17),
	datad => \track_obstacle_inst|slow_counter\(16),
	combout => \track_obstacle_inst|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y24_N2
\track_obstacle_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~1_combout\ = (!\track_obstacle_inst|slow_counter\(26) & (!\track_obstacle_inst|slow_counter\(25) & (!\track_obstacle_inst|slow_counter\(24) & !\track_obstacle_inst|slow_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(26),
	datab => \track_obstacle_inst|slow_counter\(25),
	datac => \track_obstacle_inst|slow_counter\(24),
	datad => \track_obstacle_inst|slow_counter\(27),
	combout => \track_obstacle_inst|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y24_N6
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

-- Location: LCCOMB_X15_Y25_N14
\track_obstacle_inst|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~8_combout\ = (!\track_obstacle_inst|slow_counter\(7) & (\track_obstacle_inst|slow_counter\(6) & (!\track_obstacle_inst|slow_counter\(5) & !\track_obstacle_inst|slow_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(7),
	datab => \track_obstacle_inst|slow_counter\(6),
	datac => \track_obstacle_inst|slow_counter\(5),
	datad => \track_obstacle_inst|slow_counter\(4),
	combout => \track_obstacle_inst|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y25_N16
\track_obstacle_inst|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~5_combout\ = (!\track_obstacle_inst|slow_counter\(13) & !\track_obstacle_inst|slow_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|slow_counter\(13),
	datad => \track_obstacle_inst|slow_counter\(12),
	combout => \track_obstacle_inst|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y25_N8
\track_obstacle_inst|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~6_combout\ = (\track_obstacle_inst|slow_counter\(8) & (!\track_obstacle_inst|slow_counter\(9) & (\track_obstacle_inst|slow_counter\(11) & \track_obstacle_inst|slow_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|slow_counter\(8),
	datab => \track_obstacle_inst|slow_counter\(9),
	datac => \track_obstacle_inst|slow_counter\(11),
	datad => \track_obstacle_inst|slow_counter\(10),
	combout => \track_obstacle_inst|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y25_N18
\track_obstacle_inst|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~7_combout\ = (\track_obstacle_inst|Equal0~5_combout\ & (!\track_obstacle_inst|slow_counter\(14) & (\track_obstacle_inst|Equal0~6_combout\ & !\track_obstacle_inst|slow_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~5_combout\,
	datab => \track_obstacle_inst|slow_counter\(14),
	datac => \track_obstacle_inst|Equal0~6_combout\,
	datad => \track_obstacle_inst|slow_counter\(15),
	combout => \track_obstacle_inst|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y25_N12
\track_obstacle_inst|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Equal0~10_combout\ = (\track_obstacle_inst|Equal0~9_combout\ & (\track_obstacle_inst|Equal0~4_combout\ & (\track_obstacle_inst|Equal0~8_combout\ & \track_obstacle_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Equal0~9_combout\,
	datab => \track_obstacle_inst|Equal0~4_combout\,
	datac => \track_obstacle_inst|Equal0~8_combout\,
	datad => \track_obstacle_inst|Equal0~7_combout\,
	combout => \track_obstacle_inst|Equal0~10_combout\);

-- Location: FF_X22_Y24_N23
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

-- Location: LCCOMB_X22_Y24_N0
\track_obstacle_inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan6~1_combout\ = (\track_obstacle_inst|obstacle_y[0][8]~q\ & (\track_obstacle_inst|obstacle_y[0][7]~q\ & \track_obstacle_inst|obstacle_y[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][8]~q\,
	datac => \track_obstacle_inst|obstacle_y[0][7]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][6]~q\,
	combout => \track_obstacle_inst|LessThan6~1_combout\);

-- Location: LCCOMB_X22_Y24_N28
\track_obstacle_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan0~2_combout\ = (\track_obstacle_inst|obstacle_y[0][9]~q\) # ((\track_obstacle_inst|LessThan0~1_combout\ & (\track_obstacle_inst|obstacle_y[0][5]~q\ & \track_obstacle_inst|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|LessThan0~1_combout\,
	datab => \track_obstacle_inst|obstacle_y[0][9]~q\,
	datac => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => \track_obstacle_inst|LessThan6~1_combout\,
	combout => \track_obstacle_inst|LessThan0~2_combout\);

-- Location: FF_X22_Y24_N5
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

-- Location: LCCOMB_X22_Y24_N6
\track_obstacle_inst|obstacle_y[0][1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][1]~12_combout\ = (\track_obstacle_inst|obstacle_y[0][1]~q\ & (!\track_obstacle_inst|obstacle_y[0][0]~11\)) # (!\track_obstacle_inst|obstacle_y[0][1]~q\ & ((\track_obstacle_inst|obstacle_y[0][0]~11\) # (GND)))
-- \track_obstacle_inst|obstacle_y[0][1]~13\ = CARRY((!\track_obstacle_inst|obstacle_y[0][0]~11\) # (!\track_obstacle_inst|obstacle_y[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][1]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][0]~11\,
	combout => \track_obstacle_inst|obstacle_y[0][1]~12_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][1]~13\);

-- Location: FF_X22_Y24_N7
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

-- Location: LCCOMB_X22_Y24_N8
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

-- Location: FF_X22_Y24_N9
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

-- Location: LCCOMB_X22_Y24_N10
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

-- Location: FF_X22_Y24_N11
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

-- Location: LCCOMB_X22_Y24_N12
\track_obstacle_inst|obstacle_y[0][4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][4]~18_combout\ = (\track_obstacle_inst|obstacle_y[0][4]~q\ & (\track_obstacle_inst|obstacle_y[0][3]~17\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][4]~q\ & (!\track_obstacle_inst|obstacle_y[0][3]~17\ & VCC))
-- \track_obstacle_inst|obstacle_y[0][4]~19\ = CARRY((\track_obstacle_inst|obstacle_y[0][4]~q\ & !\track_obstacle_inst|obstacle_y[0][3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][3]~17\,
	combout => \track_obstacle_inst|obstacle_y[0][4]~18_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][4]~19\);

-- Location: FF_X22_Y24_N13
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

-- Location: LCCOMB_X22_Y24_N14
\track_obstacle_inst|obstacle_y[0][5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_y[0][5]~20_combout\ = (\track_obstacle_inst|obstacle_y[0][5]~q\ & (!\track_obstacle_inst|obstacle_y[0][4]~19\)) # (!\track_obstacle_inst|obstacle_y[0][5]~q\ & ((\track_obstacle_inst|obstacle_y[0][4]~19\) # (GND)))
-- \track_obstacle_inst|obstacle_y[0][5]~21\ = CARRY((!\track_obstacle_inst|obstacle_y[0][4]~19\) # (!\track_obstacle_inst|obstacle_y[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|obstacle_y[0][4]~19\,
	combout => \track_obstacle_inst|obstacle_y[0][5]~20_combout\,
	cout => \track_obstacle_inst|obstacle_y[0][5]~21\);

-- Location: FF_X22_Y24_N15
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

-- Location: LCCOMB_X22_Y24_N16
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

-- Location: FF_X22_Y24_N17
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

-- Location: LCCOMB_X22_Y24_N18
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

-- Location: FF_X22_Y24_N19
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

-- Location: FF_X22_Y24_N21
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

-- Location: LCCOMB_X21_Y24_N10
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

-- Location: LCCOMB_X21_Y24_N12
\track_obstacle_inst|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~2_combout\ = (\track_obstacle_inst|obstacle_y[0][4]~q\ & (!\track_obstacle_inst|Add8~1\)) # (!\track_obstacle_inst|obstacle_y[0][4]~q\ & ((\track_obstacle_inst|Add8~1\) # (GND)))
-- \track_obstacle_inst|Add8~3\ = CARRY((!\track_obstacle_inst|Add8~1\) # (!\track_obstacle_inst|obstacle_y[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][4]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~1\,
	combout => \track_obstacle_inst|Add8~2_combout\,
	cout => \track_obstacle_inst|Add8~3\);

-- Location: LCCOMB_X21_Y24_N14
\track_obstacle_inst|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~4_combout\ = (\track_obstacle_inst|obstacle_y[0][5]~q\ & ((GND) # (!\track_obstacle_inst|Add8~3\))) # (!\track_obstacle_inst|obstacle_y[0][5]~q\ & (\track_obstacle_inst|Add8~3\ $ (GND)))
-- \track_obstacle_inst|Add8~5\ = CARRY((\track_obstacle_inst|obstacle_y[0][5]~q\) # (!\track_obstacle_inst|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~3\,
	combout => \track_obstacle_inst|Add8~4_combout\,
	cout => \track_obstacle_inst|Add8~5\);

-- Location: LCCOMB_X21_Y24_N16
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

-- Location: LCCOMB_X21_Y24_N18
\track_obstacle_inst|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~8_combout\ = (\track_obstacle_inst|obstacle_y[0][7]~q\ & (\track_obstacle_inst|Add8~7\ $ (GND))) # (!\track_obstacle_inst|obstacle_y[0][7]~q\ & (!\track_obstacle_inst|Add8~7\ & VCC))
-- \track_obstacle_inst|Add8~9\ = CARRY((\track_obstacle_inst|obstacle_y[0][7]~q\ & !\track_obstacle_inst|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_y[0][7]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~7\,
	combout => \track_obstacle_inst|Add8~8_combout\,
	cout => \track_obstacle_inst|Add8~9\);

-- Location: LCCOMB_X21_Y24_N20
\track_obstacle_inst|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add8~10_combout\ = (\track_obstacle_inst|obstacle_y[0][8]~q\ & (!\track_obstacle_inst|Add8~9\)) # (!\track_obstacle_inst|obstacle_y[0][8]~q\ & ((\track_obstacle_inst|Add8~9\) # (GND)))
-- \track_obstacle_inst|Add8~11\ = CARRY((!\track_obstacle_inst|Add8~9\) # (!\track_obstacle_inst|obstacle_y[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][8]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|Add8~9\,
	combout => \track_obstacle_inst|Add8~10_combout\,
	cout => \track_obstacle_inst|Add8~11\);

-- Location: LCCOMB_X21_Y24_N22
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

-- Location: LCCOMB_X21_Y24_N8
\track_obstacle_inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~1_combout\ = (!\track_obstacle_inst|obstacle_y[0][9]~q\ & ((\track_obstacle_inst|Add8~12_combout\) # ((\track_obstacle_inst|Add8~10_combout\ & \track_obstacle_inst|Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~10_combout\,
	datab => \track_obstacle_inst|Add8~8_combout\,
	datac => \track_obstacle_inst|Add8~12_combout\,
	datad => \track_obstacle_inst|obstacle_y[0][9]~q\,
	combout => \track_obstacle_inst|process_0~1_combout\);

-- Location: LCCOMB_X24_Y22_N4
\track_obstacle_inst|lfsr_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|lfsr_reg~0_combout\ = \track_obstacle_inst|random_seed[9]~18_combout\ $ (\track_obstacle_inst|obstacle_x[0][2]~30_combout\ $ (\track_obstacle_inst|random_seed[5]~2_combout\ $ (\track_obstacle_inst|obstacle_x[0][3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[9]~18_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datac => \track_obstacle_inst|random_seed[5]~2_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|lfsr_reg~0_combout\);

-- Location: LCCOMB_X24_Y22_N18
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

-- Location: LCCOMB_X24_Y22_N8
\track_obstacle_inst|random_seed[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[0]~27_combout\ = \track_obstacle_inst|random_seed[0]~25_combout\ $ (\track_obstacle_inst|lfsr_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[0]~25_combout\,
	datac => \track_obstacle_inst|lfsr_reg~0_combout\,
	combout => \track_obstacle_inst|random_seed[0]~27_combout\);

-- Location: LCCOMB_X22_Y24_N30
\track_obstacle_inst|obstacle_x[0][9]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~56_combout\ = (\track_obstacle_inst|Equal0~10_combout\ & \track_obstacle_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Equal0~10_combout\,
	datad => \track_obstacle_inst|LessThan0~2_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~56_combout\);

-- Location: FF_X24_Y22_N9
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

-- Location: LCCOMB_X24_Y22_N10
\track_obstacle_inst|random_seed[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[0]~26_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[0]~25_combout\ $ (((\track_obstacle_inst|random_seed[0]~_emulated_q\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|lfsr_reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|random_seed[0]~25_combout\,
	datac => \track_obstacle_inst|lfsr_reg~0_combout\,
	datad => \track_obstacle_inst|random_seed[0]~_emulated_q\,
	combout => \track_obstacle_inst|random_seed[0]~26_combout\);

-- Location: LCCOMB_X24_Y22_N16
\track_obstacle_inst|obstacle_x[0][0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][0]~37_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][0]~37_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[0]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[0]~26_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][0]~37_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][0]~37_combout\);

-- Location: LCCOMB_X24_Y22_N12
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

-- Location: FF_X24_Y22_N13
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

-- Location: LCCOMB_X24_Y22_N14
\track_obstacle_inst|obstacle_x[0][0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][0]~38_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][0]~_emulated_q\ $ ((\track_obstacle_inst|obstacle_x[0][0]~37_combout\)))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|random_seed[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][0]~_emulated_q\,
	datab => \track_obstacle_inst|obstacle_x[0][0]~37_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[0]~26_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][0]~38_combout\);

-- Location: LCCOMB_X22_Y22_N28
\track_obstacle_inst|obstacle_x[0][1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][1]~33_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][1]~33_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][0]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~33_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][1]~33_combout\);

-- Location: LCCOMB_X22_Y22_N12
\track_obstacle_inst|obstacle_x[0][1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][1]~35_combout\ = \track_obstacle_inst|obstacle_x[0][1]~33_combout\ $ (\track_obstacle_inst|obstacle_x[0][0]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][1]~33_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][1]~35_combout\);

-- Location: FF_X22_Y22_N13
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

-- Location: LCCOMB_X22_Y22_N30
\track_obstacle_inst|obstacle_x[0][1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][1]~34_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][1]~_emulated_q\ $ ((\track_obstacle_inst|obstacle_x[0][1]~33_combout\)))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|obstacle_x[0][0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][1]~_emulated_q\,
	datab => \track_obstacle_inst|obstacle_x[0][1]~33_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][1]~34_combout\);

-- Location: LCCOMB_X22_Y22_N22
\track_obstacle_inst|obstacle_x[0][2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][2]~29_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][2]~29_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][1]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][2]~29_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][2]~29_combout\);

-- Location: LCCOMB_X22_Y22_N0
\track_obstacle_inst|obstacle_x[0][2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][2]~31_combout\ = \track_obstacle_inst|obstacle_x[0][1]~34_combout\ $ (\track_obstacle_inst|obstacle_x[0][2]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][2]~29_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][2]~31_combout\);

-- Location: FF_X22_Y22_N1
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

-- Location: LCCOMB_X22_Y22_N26
\track_obstacle_inst|obstacle_x[0][2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][2]~30_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][2]~_emulated_q\ $ (((\track_obstacle_inst|obstacle_x[0][2]~29_combout\))))) # (!\reset~input_o\ & 
-- (((\track_obstacle_inst|obstacle_x[0][1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|obstacle_x[0][2]~_emulated_q\,
	datac => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][2]~29_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][2]~30_combout\);

-- Location: LCCOMB_X24_Y22_N22
\track_obstacle_inst|obstacle_x[0][3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][3]~25_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][3]~25_combout\)) # (!\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \track_obstacle_inst|obstacle_x[0][3]~25_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][3]~25_combout\);

-- Location: LCCOMB_X24_Y22_N24
\track_obstacle_inst|obstacle_x[0][3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][3]~27_combout\ = \track_obstacle_inst|obstacle_x[0][3]~25_combout\ $ (\track_obstacle_inst|obstacle_x[0][2]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|obstacle_x[0][3]~25_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][3]~27_combout\);

-- Location: FF_X24_Y22_N25
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

-- Location: LCCOMB_X24_Y22_N2
\track_obstacle_inst|obstacle_x[0][3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][3]~26_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][3]~25_combout\ $ (\track_obstacle_inst|obstacle_x[0][3]~_emulated_q\)))) # (!\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][2]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][3]~25_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][3]~26_combout\);

-- Location: LCCOMB_X24_Y22_N30
\track_obstacle_inst|random_seed[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[5]~1_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[5]~1_combout\)) # (!\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \track_obstacle_inst|random_seed[5]~1_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|random_seed[5]~1_combout\);

-- Location: LCCOMB_X24_Y22_N0
\track_obstacle_inst|random_seed[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[5]~3_combout\ = \track_obstacle_inst|random_seed[5]~1_combout\ $ (\track_obstacle_inst|obstacle_x[0][3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|random_seed[5]~1_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|random_seed[5]~3_combout\);

-- Location: FF_X24_Y22_N1
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

-- Location: LCCOMB_X24_Y22_N26
\track_obstacle_inst|random_seed[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[5]~2_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[5]~_emulated_q\ $ ((\track_obstacle_inst|random_seed[5]~1_combout\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|obstacle_x[0][3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|random_seed[5]~_emulated_q\,
	datac => \track_obstacle_inst|random_seed[5]~1_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|random_seed[5]~2_combout\);

-- Location: LCCOMB_X24_Y22_N28
\track_obstacle_inst|random_seed[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[6]~5_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[6]~5_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[5]~2_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[6]~5_combout\,
	combout => \track_obstacle_inst|random_seed[6]~5_combout\);

-- Location: LCCOMB_X24_Y22_N20
\track_obstacle_inst|random_seed[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[6]~7_combout\ = \track_obstacle_inst|random_seed[6]~5_combout\ $ (\track_obstacle_inst|random_seed[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[6]~5_combout\,
	datac => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|random_seed[6]~7_combout\);

-- Location: FF_X24_Y22_N21
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

-- Location: LCCOMB_X24_Y22_N6
\track_obstacle_inst|random_seed[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[6]~6_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[6]~5_combout\ $ (\track_obstacle_inst|random_seed[6]~_emulated_q\)))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[5]~2_combout\,
	datab => \track_obstacle_inst|random_seed[6]~5_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[6]~_emulated_q\,
	combout => \track_obstacle_inst|random_seed[6]~6_combout\);

-- Location: LCCOMB_X23_Y23_N6
\track_obstacle_inst|random_seed[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[7]~9_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[7]~9_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[6]~6_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[7]~9_combout\,
	combout => \track_obstacle_inst|random_seed[7]~9_combout\);

-- Location: LCCOMB_X23_Y23_N4
\track_obstacle_inst|random_seed[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[7]~11_combout\ = \track_obstacle_inst|random_seed[7]~9_combout\ $ (\track_obstacle_inst|random_seed[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[7]~9_combout\,
	datac => \track_obstacle_inst|random_seed[6]~6_combout\,
	combout => \track_obstacle_inst|random_seed[7]~11_combout\);

-- Location: FF_X23_Y23_N5
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

-- Location: LCCOMB_X23_Y23_N14
\track_obstacle_inst|random_seed[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[7]~10_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[7]~_emulated_q\ $ (\track_obstacle_inst|random_seed[7]~9_combout\)))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|random_seed[6]~6_combout\,
	datac => \track_obstacle_inst|random_seed[7]~_emulated_q\,
	datad => \track_obstacle_inst|random_seed[7]~9_combout\,
	combout => \track_obstacle_inst|random_seed[7]~10_combout\);

-- Location: LCCOMB_X23_Y23_N20
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

-- Location: LCCOMB_X23_Y23_N8
\track_obstacle_inst|random_seed[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[8]~15_combout\ = \track_obstacle_inst|random_seed[8]~13_combout\ $ (\track_obstacle_inst|random_seed[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[8]~13_combout\,
	datac => \track_obstacle_inst|random_seed[7]~10_combout\,
	combout => \track_obstacle_inst|random_seed[8]~15_combout\);

-- Location: FF_X23_Y23_N9
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

-- Location: LCCOMB_X23_Y23_N26
\track_obstacle_inst|random_seed[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[8]~14_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[8]~13_combout\ $ (((\track_obstacle_inst|random_seed[8]~_emulated_q\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|random_seed[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|random_seed[8]~13_combout\,
	datac => \track_obstacle_inst|random_seed[7]~10_combout\,
	datad => \track_obstacle_inst|random_seed[8]~_emulated_q\,
	combout => \track_obstacle_inst|random_seed[8]~14_combout\);

-- Location: LCCOMB_X23_Y23_N18
\track_obstacle_inst|random_seed[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[9]~17_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|random_seed[9]~17_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|random_seed[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[8]~14_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|random_seed[9]~17_combout\,
	combout => \track_obstacle_inst|random_seed[9]~17_combout\);

-- Location: LCCOMB_X23_Y23_N12
\track_obstacle_inst|random_seed[9]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[9]~19_combout\ = \track_obstacle_inst|random_seed[8]~14_combout\ $ (\track_obstacle_inst|random_seed[9]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|random_seed[8]~14_combout\,
	datad => \track_obstacle_inst|random_seed[9]~17_combout\,
	combout => \track_obstacle_inst|random_seed[9]~19_combout\);

-- Location: FF_X23_Y23_N13
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

-- Location: LCCOMB_X23_Y23_N30
\track_obstacle_inst|random_seed[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|random_seed[9]~18_combout\ = (\reset~input_o\ & (\track_obstacle_inst|random_seed[9]~17_combout\ $ (((\track_obstacle_inst|random_seed[9]~_emulated_q\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|random_seed[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|random_seed[9]~17_combout\,
	datac => \track_obstacle_inst|random_seed[8]~14_combout\,
	datad => \track_obstacle_inst|random_seed[9]~_emulated_q\,
	combout => \track_obstacle_inst|random_seed[9]~18_combout\);

-- Location: LCCOMB_X23_Y22_N14
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ = \track_obstacle_inst|obstacle_x[0][3]~26_combout\ $ (VCC)
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ = CARRY(\track_obstacle_inst|obstacle_x[0][3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datad => VCC,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\);

-- Location: LCCOMB_X23_Y22_N16
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ = (\track_obstacle_inst|random_seed[5]~2_combout\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\)) # 
-- (!\track_obstacle_inst|random_seed[5]~2_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\) # (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ = CARRY((!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\) # (!\track_obstacle_inst|random_seed[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[5]~2_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\);

-- Location: LCCOMB_X23_Y22_N18
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ = (\track_obstacle_inst|random_seed[6]~6_combout\ & ((GND) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\))) # 
-- (!\track_obstacle_inst|random_seed[6]~6_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ $ (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ = CARRY((\track_obstacle_inst|random_seed[6]~6_combout\) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[6]~6_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\);

-- Location: LCCOMB_X23_Y22_N20
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ = (\track_obstacle_inst|random_seed[7]~10_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ & VCC)) # 
-- (!\track_obstacle_inst|random_seed[7]~10_combout\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ = CARRY((!\track_obstacle_inst|random_seed[7]~10_combout\ & !\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[7]~10_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\);

-- Location: LCCOMB_X23_Y22_N22
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ = (\track_obstacle_inst|random_seed[8]~14_combout\ & ((GND) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\))) # 
-- (!\track_obstacle_inst|random_seed[8]~14_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ $ (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ = CARRY((\track_obstacle_inst|random_seed[8]~14_combout\) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|random_seed[8]~14_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\);

-- Location: LCCOMB_X23_Y22_N24
\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ = (\track_obstacle_inst|random_seed[9]~18_combout\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\)) # 
-- (!\track_obstacle_inst|random_seed[9]~18_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\) # (GND)))
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ = CARRY((!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\) # (!\track_obstacle_inst|random_seed[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|random_seed[9]~18_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	cout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~11\);

-- Location: LCCOMB_X23_Y22_N26
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

-- Location: LCCOMB_X23_Y22_N6
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|random_seed[7]~10_combout\)) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datab => \track_obstacle_inst|random_seed[7]~10_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\);

-- Location: LCCOMB_X23_Y22_N2
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|obstacle_x[0][3]~26_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\);

-- Location: LCCOMB_X23_Y22_N8
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[6]~6_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \track_obstacle_inst|random_seed[6]~6_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\);

-- Location: LCCOMB_X23_Y22_N10
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[5]~2_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\);

-- Location: LCCOMB_X23_Y22_N4
\track_obstacle_inst|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~3_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\) # 
-- ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\ & \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\,
	combout => \track_obstacle_inst|Add0~3_combout\);

-- Location: LCCOMB_X22_Y22_N20
\track_obstacle_inst|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~7_combout\ = \track_obstacle_inst|Add0~3_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[8]~14_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~3_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	datac => \track_obstacle_inst|random_seed[8]~14_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \track_obstacle_inst|Add0~7_combout\);

-- Location: LCCOMB_X22_Y22_N10
\track_obstacle_inst|obstacle_x[0][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][8]~5_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][8]~5_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~7_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][8]~5_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][8]~5_combout\);

-- Location: LCCOMB_X22_Y22_N24
\track_obstacle_inst|obstacle_x[0][8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][8]~7_combout\ = \track_obstacle_inst|obstacle_x[0][8]~5_combout\ $ (\track_obstacle_inst|Add0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][8]~5_combout\,
	datad => \track_obstacle_inst|Add0~7_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][8]~7_combout\);

-- Location: FF_X22_Y22_N25
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

-- Location: LCCOMB_X22_Y22_N18
\track_obstacle_inst|obstacle_x[0][8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][8]~6_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][8]~5_combout\ $ (((\track_obstacle_inst|obstacle_x[0][8]~_emulated_q\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][8]~5_combout\,
	datab => \track_obstacle_inst|Add0~7_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][8]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][8]~6_combout\);

-- Location: LCCOMB_X22_Y22_N8
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~5_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|random_seed[8]~14_combout\))) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	datac => \track_obstacle_inst|random_seed[8]~14_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~5_combout\);

-- Location: LCCOMB_X23_Y22_N28
\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~1_combout\ = (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|random_seed[9]~18_combout\)) # 
-- (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \track_obstacle_inst|random_seed[9]~18_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~1_combout\);

-- Location: LCCOMB_X22_Y22_N2
\track_obstacle_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~4_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~1_combout\ $ (((\track_obstacle_inst|Add0~3_combout\ & \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add0~3_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[98]~5_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[99]~1_combout\,
	combout => \track_obstacle_inst|Add0~4_combout\);

-- Location: LCCOMB_X22_Y22_N16
\track_obstacle_inst|obstacle_x[0][9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~1_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][9]~1_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~4_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][9]~1_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~1_combout\);

-- Location: LCCOMB_X22_Y22_N4
\track_obstacle_inst|obstacle_x[0][9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~3_combout\ = \track_obstacle_inst|obstacle_x[0][9]~1_combout\ $ (\track_obstacle_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][9]~1_combout\,
	datad => \track_obstacle_inst|Add0~4_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~3_combout\);

-- Location: FF_X22_Y22_N5
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

-- Location: LCCOMB_X22_Y22_N14
\track_obstacle_inst|obstacle_x[0][9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][9]~2_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][9]~1_combout\ $ ((\track_obstacle_inst|obstacle_x[0][9]~_emulated_q\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|obstacle_x[0][9]~1_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][9]~_emulated_q\,
	datad => \track_obstacle_inst|Add0~4_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][9]~2_combout\);

-- Location: LCCOMB_X23_Y22_N12
\track_obstacle_inst|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~5_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\) # 
-- ((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\ & \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\,
	combout => \track_obstacle_inst|Add0~5_combout\);

-- Location: LCCOMB_X22_Y23_N14
\track_obstacle_inst|obstacle_x[0][7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][7]~9_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][7]~9_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~5_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][7]~9_combout\,
	datad => \reset~input_o\,
	combout => \track_obstacle_inst|obstacle_x[0][7]~9_combout\);

-- Location: LCCOMB_X22_Y23_N4
\track_obstacle_inst|obstacle_x[0][7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][7]~11_combout\ = \track_obstacle_inst|Add0~5_combout\ $ (\track_obstacle_inst|obstacle_x[0][7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~5_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][7]~9_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][7]~11_combout\);

-- Location: FF_X22_Y23_N5
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

-- Location: LCCOMB_X22_Y23_N30
\track_obstacle_inst|obstacle_x[0][7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][7]~10_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][7]~9_combout\ $ ((\track_obstacle_inst|obstacle_x[0][7]~_emulated_q\)))) # (!\reset~input_o\ & (((\track_obstacle_inst|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][7]~9_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][7]~_emulated_q\,
	datac => \track_obstacle_inst|Add0~5_combout\,
	datad => \reset~input_o\,
	combout => \track_obstacle_inst|obstacle_x[0][7]~10_combout\);

-- Location: LCCOMB_X23_Y22_N30
\track_obstacle_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~6_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\ & 
-- \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[95]~4_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[96]~3_combout\,
	datad => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	combout => \track_obstacle_inst|Add0~6_combout\);

-- Location: LCCOMB_X22_Y23_N6
\track_obstacle_inst|obstacle_x[0][6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][6]~13_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][6]~13_combout\))) # (!\reset~input_o\ & (!\track_obstacle_inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|Add0~6_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][6]~13_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][6]~13_combout\);

-- Location: LCCOMB_X22_Y23_N8
\track_obstacle_inst|obstacle_x[0][6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][6]~15_combout\ = \track_obstacle_inst|Add0~6_combout\ $ (!\track_obstacle_inst|obstacle_x[0][6]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~6_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][6]~13_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][6]~15_combout\);

-- Location: FF_X22_Y23_N9
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

-- Location: LCCOMB_X22_Y23_N2
\track_obstacle_inst|obstacle_x[0][6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][6]~14_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][6]~13_combout\ $ (((\track_obstacle_inst|obstacle_x[0][6]~_emulated_q\))))) # (!\reset~input_o\ & (((!\track_obstacle_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][6]~13_combout\,
	datab => \track_obstacle_inst|Add0~6_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][6]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \track_obstacle_inst|obstacle_x[0][6]~14_combout\);

-- Location: LCCOMB_X21_Y20_N2
\track_obstacle_inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~2_combout\ = (!\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & (!\track_obstacle_inst|obstacle_x[0][9]~2_combout\ & (!\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & 
-- !\track_obstacle_inst|obstacle_x[0][6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][8]~6_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][9]~2_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][7]~10_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][6]~14_combout\,
	combout => \track_obstacle_inst|process_0~2_combout\);

-- Location: LCCOMB_X21_Y24_N2
\track_obstacle_inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan7~0_combout\ = (!\track_obstacle_inst|Add8~2_combout\ & (!\track_obstacle_inst|Add8~4_combout\ & (!\track_obstacle_inst|Add8~12_combout\ & !\track_obstacle_inst|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~2_combout\,
	datab => \track_obstacle_inst|Add8~4_combout\,
	datac => \track_obstacle_inst|Add8~12_combout\,
	datad => \track_obstacle_inst|Add8~6_combout\,
	combout => \track_obstacle_inst|LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y23_N12
\track_obstacle_inst|obstacle_x[0][4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][4]~21_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][4]~21_combout\))) # (!\reset~input_o\ & (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][4]~21_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][4]~21_combout\);

-- Location: LCCOMB_X22_Y23_N0
\track_obstacle_inst|obstacle_x[0][4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][4]~23_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\ $ (!\track_obstacle_inst|obstacle_x[0][4]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][4]~21_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][4]~23_combout\);

-- Location: FF_X22_Y23_N1
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

-- Location: LCCOMB_X22_Y23_N10
\track_obstacle_inst|obstacle_x[0][4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][4]~22_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][4]~21_combout\ $ (((\track_obstacle_inst|obstacle_x[0][4]~_emulated_q\))))) # (!\reset~input_o\ & 
-- (((!\track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][4]~21_combout\,
	datab => \reset~input_o\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][4]~_emulated_q\,
	combout => \track_obstacle_inst|obstacle_x[0][4]~22_combout\);

-- Location: LCCOMB_X23_Y22_N0
\track_obstacle_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add0~2_combout\ = \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\ $ (((\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & 
-- ((\track_obstacle_inst|random_seed[5]~2_combout\))) # (!\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datab => \track_obstacle_inst|Mod0|auto_generated|divider|divider|StageOut[94]~0_combout\,
	datac => \track_obstacle_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \track_obstacle_inst|random_seed[5]~2_combout\,
	combout => \track_obstacle_inst|Add0~2_combout\);

-- Location: LCCOMB_X23_Y23_N24
\track_obstacle_inst|obstacle_x[0][5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][5]~17_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|obstacle_x[0][5]~17_combout\))) # (!\reset~input_o\ & (\track_obstacle_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|Add0~2_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][5]~17_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][5]~17_combout\);

-- Location: LCCOMB_X23_Y23_N16
\track_obstacle_inst|obstacle_x[0][5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][5]~19_combout\ = \track_obstacle_inst|obstacle_x[0][5]~17_combout\ $ (\track_obstacle_inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|obstacle_x[0][5]~17_combout\,
	datad => \track_obstacle_inst|Add0~2_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][5]~19_combout\);

-- Location: FF_X23_Y23_N17
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

-- Location: LCCOMB_X23_Y23_N2
\track_obstacle_inst|obstacle_x[0][5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|obstacle_x[0][5]~18_combout\ = (\reset~input_o\ & (\track_obstacle_inst|obstacle_x[0][5]~_emulated_q\ $ (((\track_obstacle_inst|obstacle_x[0][5]~17_combout\))))) # (!\reset~input_o\ & (((\track_obstacle_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][5]~_emulated_q\,
	datab => \track_obstacle_inst|Add0~2_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|obstacle_x[0][5]~17_combout\,
	combout => \track_obstacle_inst|obstacle_x[0][5]~18_combout\);

-- Location: LCCOMB_X21_Y20_N0
\track_obstacle_inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~0_combout\ = (((!\track_obstacle_inst|obstacle_x[0][2]~30_combout\ & !\track_obstacle_inst|obstacle_x[0][3]~26_combout\)) # (!\track_obstacle_inst|obstacle_x[0][5]~18_combout\)) # 
-- (!\track_obstacle_inst|obstacle_x[0][4]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][4]~22_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][5]~18_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	combout => \track_obstacle_inst|process_0~0_combout\);

-- Location: LCCOMB_X21_Y20_N28
\track_obstacle_inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~3_combout\ = (\track_obstacle_inst|process_0~1_combout\ & (\track_obstacle_inst|process_0~2_combout\ & (!\track_obstacle_inst|LessThan7~0_combout\ & \track_obstacle_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_0~1_combout\,
	datab => \track_obstacle_inst|process_0~2_combout\,
	datac => \track_obstacle_inst|LessThan7~0_combout\,
	datad => \track_obstacle_inst|process_0~0_combout\,
	combout => \track_obstacle_inst|process_0~3_combout\);

-- Location: LCCOMB_X22_Y24_N2
\track_obstacle_inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan6~0_combout\ = ((\track_obstacle_inst|obstacle_y[0][5]~q\) # ((\track_obstacle_inst|obstacle_y[0][0]~q\ & \track_obstacle_inst|obstacle_y[0][1]~q\))) # (!\track_obstacle_inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][0]~q\,
	datab => \track_obstacle_inst|LessThan0~0_combout\,
	datac => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datad => \track_obstacle_inst|obstacle_y[0][1]~q\,
	combout => \track_obstacle_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\track_obstacle_inst|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan4~0_combout\ = (\track_obstacle_inst|obstacle_x[0][0]~38_combout\ & (\track_obstacle_inst|obstacle_x[0][4]~22_combout\ & (\track_obstacle_inst|obstacle_x[0][5]~18_combout\ & \track_obstacle_inst|obstacle_x[0][1]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datab => \track_obstacle_inst|obstacle_x[0][4]~22_combout\,
	datac => \track_obstacle_inst|obstacle_x[0][5]~18_combout\,
	datad => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	combout => \track_obstacle_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\track_obstacle_inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_0~4_combout\ = (\track_obstacle_inst|process_0~3_combout\ & (!\track_obstacle_inst|LessThan4~0_combout\ & ((!\track_obstacle_inst|LessThan6~1_combout\) # (!\track_obstacle_inst|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_0~3_combout\,
	datab => \track_obstacle_inst|LessThan6~0_combout\,
	datac => \track_obstacle_inst|LessThan4~0_combout\,
	datad => \track_obstacle_inst|LessThan6~1_combout\,
	combout => \track_obstacle_inst|process_0~4_combout\);

-- Location: FF_X23_Y20_N11
\track_obstacle_inst|collision_detected\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|process_0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|collision_detected~q\);

-- Location: LCCOMB_X24_Y21_N28
\track_obstacle_inst|track_color~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~8_combout\ = (\reset~input_o\) # (\track_obstacle_inst|collision_detected~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~8_combout\);

-- Location: FF_X24_Y21_N29
\track_obstacle_inst|track_color[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(9));

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

-- Location: LCCOMB_X29_Y28_N0
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

-- Location: LCCOMB_X28_Y27_N12
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

-- Location: FF_X28_Y27_N13
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

-- Location: LCCOMB_X28_Y27_N22
\debouncer_right|counter[8]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[8]~96_combout\ = (\btn_right~input_o\ $ (\debouncer_right|debounced_signal~q\)) # (!\debouncer_right|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_right~input_o\,
	datab => \debouncer_right|debounced_signal~q\,
	datad => \debouncer_right|debouncing~q\,
	combout => \debouncer_right|counter[8]~96_combout\);

-- Location: LCCOMB_X28_Y27_N0
\debouncer_right|counter[8]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|counter[8]~97_combout\ = ((\debouncer_right|LessThan0~8_combout\) # (\debouncer_right|debounced_signal~q\ $ (\btn_right~input_o\))) # (!\debouncer_right|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|debouncing~q\,
	datab => \debouncer_right|LessThan0~8_combout\,
	datac => \debouncer_right|debounced_signal~q\,
	datad => \btn_right~input_o\,
	combout => \debouncer_right|counter[8]~97_combout\);

-- Location: FF_X29_Y28_N1
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(0));

-- Location: LCCOMB_X29_Y28_N2
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

-- Location: FF_X29_Y28_N3
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(1));

-- Location: LCCOMB_X29_Y28_N4
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

-- Location: FF_X29_Y28_N5
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(2));

-- Location: LCCOMB_X29_Y28_N6
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

-- Location: FF_X29_Y28_N7
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(3));

-- Location: LCCOMB_X29_Y28_N8
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

-- Location: FF_X29_Y28_N9
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(4));

-- Location: LCCOMB_X29_Y28_N10
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

-- Location: FF_X29_Y28_N11
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(5));

-- Location: LCCOMB_X29_Y28_N12
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

-- Location: FF_X29_Y28_N13
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(6));

-- Location: LCCOMB_X29_Y28_N14
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

-- Location: FF_X29_Y28_N15
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(7));

-- Location: LCCOMB_X29_Y28_N16
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

-- Location: FF_X29_Y28_N17
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(8));

-- Location: LCCOMB_X28_Y27_N10
\debouncer_right|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~4_combout\ = ((!\debouncer_right|counter\(7) & (!\debouncer_right|counter\(6) & !\debouncer_right|counter\(5)))) # (!\debouncer_right|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(8),
	datab => \debouncer_right|counter\(7),
	datac => \debouncer_right|counter\(6),
	datad => \debouncer_right|counter\(5),
	combout => \debouncer_right|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y28_N18
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

-- Location: FF_X29_Y28_N19
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(9));

-- Location: LCCOMB_X29_Y28_N20
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

-- Location: FF_X29_Y28_N21
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(10));

-- Location: LCCOMB_X29_Y28_N22
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

-- Location: FF_X29_Y28_N23
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(11));

-- Location: LCCOMB_X29_Y28_N24
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

-- Location: FF_X29_Y28_N25
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(12));

-- Location: LCCOMB_X28_Y27_N28
\debouncer_right|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~5_combout\ = (!\debouncer_right|counter\(9) & (!\debouncer_right|counter\(12) & (!\debouncer_right|counter\(11) & !\debouncer_right|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(9),
	datab => \debouncer_right|counter\(12),
	datac => \debouncer_right|counter\(11),
	datad => \debouncer_right|counter\(10),
	combout => \debouncer_right|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y28_N26
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

-- Location: FF_X29_Y28_N27
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(13));

-- Location: LCCOMB_X29_Y28_N28
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

-- Location: FF_X29_Y28_N29
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(14));

-- Location: LCCOMB_X28_Y27_N30
\debouncer_right|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~6_combout\ = (!\debouncer_right|counter\(14) & (((\debouncer_right|LessThan0~4_combout\ & \debouncer_right|LessThan0~5_combout\)) # (!\debouncer_right|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|LessThan0~4_combout\,
	datab => \debouncer_right|LessThan0~5_combout\,
	datac => \debouncer_right|counter\(14),
	datad => \debouncer_right|counter\(13),
	combout => \debouncer_right|LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y28_N30
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

-- Location: FF_X29_Y28_N31
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(15));

-- Location: LCCOMB_X29_Y27_N0
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

-- Location: FF_X29_Y27_N1
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(16));

-- Location: LCCOMB_X29_Y27_N2
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

-- Location: FF_X29_Y27_N3
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(17));

-- Location: LCCOMB_X29_Y27_N4
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

-- Location: FF_X29_Y27_N5
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(18));

-- Location: LCCOMB_X28_Y27_N8
\debouncer_right|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~7_combout\ = (((!\debouncer_right|counter\(17)) # (!\debouncer_right|counter\(15))) # (!\debouncer_right|counter\(18))) # (!\debouncer_right|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(16),
	datab => \debouncer_right|counter\(18),
	datac => \debouncer_right|counter\(15),
	datad => \debouncer_right|counter\(17),
	combout => \debouncer_right|LessThan0~7_combout\);

-- Location: LCCOMB_X29_Y27_N6
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

-- Location: FF_X29_Y27_N7
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(19));

-- Location: LCCOMB_X29_Y27_N8
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

-- Location: FF_X29_Y27_N9
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(20));

-- Location: LCCOMB_X29_Y27_N10
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

-- Location: FF_X29_Y27_N11
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(21));

-- Location: LCCOMB_X29_Y27_N12
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

-- Location: FF_X29_Y27_N13
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(22));

-- Location: LCCOMB_X29_Y27_N14
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

-- Location: FF_X29_Y27_N15
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(23));

-- Location: LCCOMB_X29_Y27_N16
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

-- Location: FF_X29_Y27_N17
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(24));

-- Location: LCCOMB_X29_Y27_N18
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

-- Location: FF_X29_Y27_N19
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(25));

-- Location: LCCOMB_X29_Y27_N20
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

-- Location: FF_X29_Y27_N21
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(26));

-- Location: LCCOMB_X29_Y27_N22
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

-- Location: FF_X29_Y27_N23
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(27));

-- Location: LCCOMB_X29_Y27_N24
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

-- Location: FF_X29_Y27_N25
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(28));

-- Location: LCCOMB_X29_Y27_N26
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

-- Location: FF_X29_Y27_N27
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(29));

-- Location: LCCOMB_X29_Y27_N28
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

-- Location: FF_X29_Y27_N29
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(30));

-- Location: LCCOMB_X29_Y27_N30
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

-- Location: FF_X29_Y27_N31
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
	sclr => \debouncer_right|counter[8]~96_combout\,
	ena => \debouncer_right|counter[8]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_right|counter\(31));

-- Location: LCCOMB_X28_Y27_N6
\debouncer_right|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~2_combout\ = (!\debouncer_right|counter\(27) & (!\debouncer_right|counter\(30) & (!\debouncer_right|counter\(29) & !\debouncer_right|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(27),
	datab => \debouncer_right|counter\(30),
	datac => \debouncer_right|counter\(29),
	datad => \debouncer_right|counter\(28),
	combout => \debouncer_right|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y27_N20
\debouncer_right|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~1_combout\ = (!\debouncer_right|counter\(25) & (!\debouncer_right|counter\(26) & (!\debouncer_right|counter\(23) & !\debouncer_right|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(25),
	datab => \debouncer_right|counter\(26),
	datac => \debouncer_right|counter\(23),
	datad => \debouncer_right|counter\(24),
	combout => \debouncer_right|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y27_N2
\debouncer_right|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~0_combout\ = (!\debouncer_right|counter\(22) & (!\debouncer_right|counter\(21) & (!\debouncer_right|counter\(20) & !\debouncer_right|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|counter\(22),
	datab => \debouncer_right|counter\(21),
	datac => \debouncer_right|counter\(20),
	datad => \debouncer_right|counter\(19),
	combout => \debouncer_right|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y27_N24
\debouncer_right|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~3_combout\ = (\debouncer_right|LessThan0~2_combout\ & (\debouncer_right|LessThan0~1_combout\ & \debouncer_right|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|LessThan0~2_combout\,
	datab => \debouncer_right|LessThan0~1_combout\,
	datad => \debouncer_right|LessThan0~0_combout\,
	combout => \debouncer_right|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y27_N18
\debouncer_right|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_right|LessThan0~8_combout\ = (\debouncer_right|counter\(31)) # ((\debouncer_right|LessThan0~3_combout\ & ((\debouncer_right|LessThan0~6_combout\) # (\debouncer_right|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_right|LessThan0~6_combout\,
	datab => \debouncer_right|LessThan0~7_combout\,
	datac => \debouncer_right|counter\(31),
	datad => \debouncer_right|LessThan0~3_combout\,
	combout => \debouncer_right|LessThan0~8_combout\);

-- Location: LCCOMB_X28_Y27_N16
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

-- Location: FF_X28_Y27_N17
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

-- Location: LCCOMB_X23_Y21_N10
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

-- Location: LCCOMB_X33_Y11_N0
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

-- Location: LCCOMB_X32_Y10_N12
\debouncer_left|debouncing~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|debouncing~0_combout\ = (\debouncer_left|LessThan0~8_combout\ & (\debouncer_left|debounced_signal~q\ $ (((!\btn_left~input_o\))))) # (!\debouncer_left|LessThan0~8_combout\ & (!\debouncer_left|debouncing~q\ & 
-- (\debouncer_left|debounced_signal~q\ $ (!\btn_left~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~8_combout\,
	datab => \debouncer_left|debounced_signal~q\,
	datac => \debouncer_left|debouncing~q\,
	datad => \btn_left~input_o\,
	combout => \debouncer_left|debouncing~0_combout\);

-- Location: FF_X32_Y10_N13
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

-- Location: LCCOMB_X32_Y10_N14
\debouncer_left|counter[7]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[7]~96_combout\ = (\btn_left~input_o\ $ (\debouncer_left|debounced_signal~q\)) # (!\debouncer_left|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_left~input_o\,
	datab => \debouncer_left|debounced_signal~q\,
	datad => \debouncer_left|debouncing~q\,
	combout => \debouncer_left|counter[7]~96_combout\);

-- Location: LCCOMB_X32_Y10_N0
\debouncer_left|counter[7]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|counter[7]~97_combout\ = ((\debouncer_left|LessThan0~8_combout\) # (\debouncer_left|debounced_signal~q\ $ (\btn_left~input_o\))) # (!\debouncer_left|debouncing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|debouncing~q\,
	datab => \debouncer_left|debounced_signal~q\,
	datac => \debouncer_left|LessThan0~8_combout\,
	datad => \btn_left~input_o\,
	combout => \debouncer_left|counter[7]~97_combout\);

-- Location: FF_X33_Y11_N1
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(0));

-- Location: LCCOMB_X33_Y11_N2
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

-- Location: FF_X33_Y11_N3
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(1));

-- Location: LCCOMB_X33_Y11_N4
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

-- Location: FF_X33_Y11_N5
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(2));

-- Location: LCCOMB_X33_Y11_N6
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

-- Location: FF_X33_Y11_N7
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(3));

-- Location: LCCOMB_X33_Y11_N8
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

-- Location: FF_X33_Y11_N9
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(4));

-- Location: LCCOMB_X33_Y11_N10
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

-- Location: FF_X33_Y11_N11
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(5));

-- Location: LCCOMB_X33_Y11_N12
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

-- Location: FF_X33_Y11_N13
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(6));

-- Location: LCCOMB_X33_Y11_N14
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

-- Location: FF_X33_Y11_N15
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(7));

-- Location: LCCOMB_X33_Y11_N16
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

-- Location: FF_X33_Y11_N17
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(8));

-- Location: LCCOMB_X32_Y10_N10
\debouncer_left|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~4_combout\ = ((!\debouncer_left|counter\(6) & (!\debouncer_left|counter\(5) & !\debouncer_left|counter\(7)))) # (!\debouncer_left|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(6),
	datab => \debouncer_left|counter\(8),
	datac => \debouncer_left|counter\(5),
	datad => \debouncer_left|counter\(7),
	combout => \debouncer_left|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y11_N18
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

-- Location: FF_X33_Y11_N19
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(9));

-- Location: LCCOMB_X33_Y11_N20
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

-- Location: FF_X33_Y11_N21
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(10));

-- Location: LCCOMB_X33_Y11_N22
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

-- Location: FF_X33_Y11_N23
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(11));

-- Location: LCCOMB_X33_Y11_N24
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

-- Location: FF_X33_Y11_N25
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(12));

-- Location: LCCOMB_X32_Y10_N28
\debouncer_left|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~5_combout\ = (!\debouncer_left|counter\(12) & (!\debouncer_left|counter\(10) & (!\debouncer_left|counter\(11) & !\debouncer_left|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(12),
	datab => \debouncer_left|counter\(10),
	datac => \debouncer_left|counter\(11),
	datad => \debouncer_left|counter\(9),
	combout => \debouncer_left|LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y11_N26
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

-- Location: FF_X33_Y11_N27
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(13));

-- Location: LCCOMB_X33_Y11_N28
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

-- Location: FF_X33_Y11_N29
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(14));

-- Location: LCCOMB_X32_Y10_N22
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

-- Location: LCCOMB_X33_Y11_N30
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

-- Location: FF_X33_Y11_N31
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(15));

-- Location: LCCOMB_X33_Y10_N0
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

-- Location: FF_X33_Y10_N1
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(16));

-- Location: LCCOMB_X33_Y10_N2
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

-- Location: FF_X33_Y10_N3
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(17));

-- Location: LCCOMB_X33_Y10_N4
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

-- Location: FF_X33_Y10_N5
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(18));

-- Location: LCCOMB_X32_Y10_N24
\debouncer_left|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~7_combout\ = (((!\debouncer_left|counter\(17)) # (!\debouncer_left|counter\(18))) # (!\debouncer_left|counter\(16))) # (!\debouncer_left|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(15),
	datab => \debouncer_left|counter\(16),
	datac => \debouncer_left|counter\(18),
	datad => \debouncer_left|counter\(17),
	combout => \debouncer_left|LessThan0~7_combout\);

-- Location: LCCOMB_X33_Y10_N6
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

-- Location: FF_X33_Y10_N7
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(19));

-- Location: LCCOMB_X33_Y10_N8
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

-- Location: FF_X33_Y10_N9
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(20));

-- Location: LCCOMB_X33_Y10_N10
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

-- Location: FF_X33_Y10_N11
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(21));

-- Location: LCCOMB_X33_Y10_N12
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

-- Location: FF_X33_Y10_N13
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(22));

-- Location: LCCOMB_X33_Y10_N14
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

-- Location: FF_X33_Y10_N15
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(23));

-- Location: LCCOMB_X33_Y10_N16
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

-- Location: FF_X33_Y10_N17
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(24));

-- Location: LCCOMB_X33_Y10_N18
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

-- Location: FF_X33_Y10_N19
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(25));

-- Location: LCCOMB_X33_Y10_N20
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

-- Location: FF_X33_Y10_N21
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(26));

-- Location: LCCOMB_X33_Y10_N22
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

-- Location: FF_X33_Y10_N23
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(27));

-- Location: LCCOMB_X33_Y10_N24
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

-- Location: FF_X33_Y10_N25
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(28));

-- Location: LCCOMB_X33_Y10_N26
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

-- Location: FF_X33_Y10_N27
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(29));

-- Location: LCCOMB_X33_Y10_N28
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

-- Location: FF_X33_Y10_N29
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(30));

-- Location: LCCOMB_X33_Y10_N30
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

-- Location: FF_X33_Y10_N31
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
	sclr => \debouncer_left|counter[7]~96_combout\,
	ena => \debouncer_left|counter[7]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_left|counter\(31));

-- Location: LCCOMB_X32_Y10_N6
\debouncer_left|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~2_combout\ = (!\debouncer_left|counter\(29) & (!\debouncer_left|counter\(27) & (!\debouncer_left|counter\(28) & !\debouncer_left|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(29),
	datab => \debouncer_left|counter\(27),
	datac => \debouncer_left|counter\(28),
	datad => \debouncer_left|counter\(30),
	combout => \debouncer_left|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y10_N20
\debouncer_left|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~1_combout\ = (!\debouncer_left|counter\(24) & (!\debouncer_left|counter\(25) & (!\debouncer_left|counter\(26) & !\debouncer_left|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(24),
	datab => \debouncer_left|counter\(25),
	datac => \debouncer_left|counter\(26),
	datad => \debouncer_left|counter\(23),
	combout => \debouncer_left|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y10_N2
\debouncer_left|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~0_combout\ = (!\debouncer_left|counter\(19) & (!\debouncer_left|counter\(21) & (!\debouncer_left|counter\(22) & !\debouncer_left|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|counter\(19),
	datab => \debouncer_left|counter\(21),
	datac => \debouncer_left|counter\(22),
	datad => \debouncer_left|counter\(20),
	combout => \debouncer_left|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y10_N8
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

-- Location: LCCOMB_X32_Y10_N26
\debouncer_left|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debouncer_left|LessThan0~8_combout\ = (\debouncer_left|counter\(31)) # ((\debouncer_left|LessThan0~3_combout\ & ((\debouncer_left|LessThan0~6_combout\) # (\debouncer_left|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_left|LessThan0~6_combout\,
	datab => \debouncer_left|LessThan0~7_combout\,
	datac => \debouncer_left|counter\(31),
	datad => \debouncer_left|LessThan0~3_combout\,
	combout => \debouncer_left|LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y10_N16
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

-- Location: FF_X32_Y10_N17
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

-- Location: FF_X23_Y21_N7
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

-- Location: LCCOMB_X23_Y21_N20
\car_control_inst|x_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[6]~19_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(6) $ (!\car_control_inst|x_pos[5]~18\)))) # (GND)
-- \car_control_inst|x_pos[6]~20\ = CARRY((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(6)) # (!\car_control_inst|x_pos[5]~18\))) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(6) & 
-- !\car_control_inst|x_pos[5]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(6),
	datad => VCC,
	cin => \car_control_inst|x_pos[5]~18\,
	combout => \car_control_inst|x_pos[6]~19_combout\,
	cout => \car_control_inst|x_pos[6]~20\);

-- Location: LCCOMB_X23_Y21_N22
\car_control_inst|x_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[7]~21_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(7) $ (\car_control_inst|x_pos[6]~20\)))) # (GND)
-- \car_control_inst|x_pos[7]~22\ = CARRY((\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(7) & !\car_control_inst|x_pos[6]~20\)) # (!\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(7)) # 
-- (!\car_control_inst|x_pos[6]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(7),
	datad => VCC,
	cin => \car_control_inst|x_pos[6]~20\,
	combout => \car_control_inst|x_pos[7]~21_combout\,
	cout => \car_control_inst|x_pos[7]~22\);

-- Location: FF_X23_Y21_N23
\car_control_inst|x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[7]~21_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(7));

-- Location: LCCOMB_X23_Y21_N24
\car_control_inst|x_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[8]~23_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(8) $ (!\car_control_inst|x_pos[7]~22\)))) # (GND)
-- \car_control_inst|x_pos[8]~24\ = CARRY((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(8)) # (!\car_control_inst|x_pos[7]~22\))) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(8) & 
-- !\car_control_inst|x_pos[7]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(8),
	datad => VCC,
	cin => \car_control_inst|x_pos[7]~22\,
	combout => \car_control_inst|x_pos[8]~23_combout\,
	cout => \car_control_inst|x_pos[8]~24\);

-- Location: FF_X23_Y21_N25
\car_control_inst|x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[8]~23_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(8));

-- Location: LCCOMB_X23_Y21_N8
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

-- Location: LCCOMB_X23_Y21_N0
\car_control_inst|x_pos[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[9]~27_combout\ = (\car_control_inst|x_pos\(6) & (!\car_control_inst|x_pos\(4) & (!\car_control_inst|x_pos\(5) & !\car_control_inst|x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(6),
	datab => \car_control_inst|x_pos\(4),
	datac => \car_control_inst|x_pos\(5),
	datad => \car_control_inst|x_pos\(9),
	combout => \car_control_inst|x_pos[9]~27_combout\);

-- Location: LCCOMB_X23_Y21_N28
\car_control_inst|x_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[9]~28_combout\ = (\car_control_inst|process_0~0_combout\ & (\car_control_inst|x_pos[9]~27_combout\ & ((!\car_control_inst|x_pos\(3)) # (!\car_control_inst|x_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(2),
	datab => \car_control_inst|process_0~0_combout\,
	datac => \car_control_inst|x_pos\(3),
	datad => \car_control_inst|x_pos[9]~27_combout\,
	combout => \car_control_inst|x_pos[9]~28_combout\);

-- Location: LCCOMB_X23_Y21_N6
\car_control_inst|x_pos[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[9]~29_combout\ = (\car_control_inst|process_0~2_combout\) # ((\debouncer_left|debounced_signal~q\ & (!\car_control_inst|left_prev~q\ & !\car_control_inst|x_pos[9]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \debouncer_left|debounced_signal~q\,
	datac => \car_control_inst|left_prev~q\,
	datad => \car_control_inst|x_pos[9]~28_combout\,
	combout => \car_control_inst|x_pos[9]~29_combout\);

-- Location: FF_X23_Y21_N11
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
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(1));

-- Location: LCCOMB_X23_Y21_N12
\car_control_inst|x_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[2]~11_combout\ = (\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(2) & (!\car_control_inst|x_pos[1]~10\)) # (!\car_control_inst|x_pos\(2) & ((\car_control_inst|x_pos[1]~10\) # (GND))))) # 
-- (!\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(2) & (\car_control_inst|x_pos[1]~10\ & VCC)) # (!\car_control_inst|x_pos\(2) & (!\car_control_inst|x_pos[1]~10\))))
-- \car_control_inst|x_pos[2]~12\ = CARRY((\car_control_inst|process_0~2_combout\ & ((!\car_control_inst|x_pos[1]~10\) # (!\car_control_inst|x_pos\(2)))) # (!\car_control_inst|process_0~2_combout\ & (!\car_control_inst|x_pos\(2) & 
-- !\car_control_inst|x_pos[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(2),
	datad => VCC,
	cin => \car_control_inst|x_pos[1]~10\,
	combout => \car_control_inst|x_pos[2]~11_combout\,
	cout => \car_control_inst|x_pos[2]~12\);

-- Location: FF_X23_Y21_N13
\car_control_inst|x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[2]~11_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(2));

-- Location: LCCOMB_X23_Y21_N14
\car_control_inst|x_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[3]~13_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(3) $ (!\car_control_inst|x_pos[2]~12\)))) # (GND)
-- \car_control_inst|x_pos[3]~14\ = CARRY((\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(3)) # (!\car_control_inst|x_pos[2]~12\))) # (!\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(3) & 
-- !\car_control_inst|x_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(3),
	datad => VCC,
	cin => \car_control_inst|x_pos[2]~12\,
	combout => \car_control_inst|x_pos[3]~13_combout\,
	cout => \car_control_inst|x_pos[3]~14\);

-- Location: FF_X23_Y21_N15
\car_control_inst|x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[3]~13_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(3));

-- Location: LCCOMB_X23_Y21_N16
\car_control_inst|x_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[4]~15_combout\ = (\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(4) & (!\car_control_inst|x_pos[3]~14\)) # (!\car_control_inst|x_pos\(4) & ((\car_control_inst|x_pos[3]~14\) # (GND))))) # 
-- (!\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(4) & (\car_control_inst|x_pos[3]~14\ & VCC)) # (!\car_control_inst|x_pos\(4) & (!\car_control_inst|x_pos[3]~14\))))
-- \car_control_inst|x_pos[4]~16\ = CARRY((\car_control_inst|process_0~2_combout\ & ((!\car_control_inst|x_pos[3]~14\) # (!\car_control_inst|x_pos\(4)))) # (!\car_control_inst|process_0~2_combout\ & (!\car_control_inst|x_pos\(4) & 
-- !\car_control_inst|x_pos[3]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(4),
	datad => VCC,
	cin => \car_control_inst|x_pos[3]~14\,
	combout => \car_control_inst|x_pos[4]~15_combout\,
	cout => \car_control_inst|x_pos[4]~16\);

-- Location: FF_X23_Y21_N17
\car_control_inst|x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[4]~15_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(4));

-- Location: LCCOMB_X23_Y21_N18
\car_control_inst|x_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[5]~17_combout\ = ((\car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos\(5) $ (\car_control_inst|x_pos[4]~16\)))) # (GND)
-- \car_control_inst|x_pos[5]~18\ = CARRY((\car_control_inst|process_0~2_combout\ & (\car_control_inst|x_pos\(5) & !\car_control_inst|x_pos[4]~16\)) # (!\car_control_inst|process_0~2_combout\ & ((\car_control_inst|x_pos\(5)) # 
-- (!\car_control_inst|x_pos[4]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datab => \car_control_inst|x_pos\(5),
	datad => VCC,
	cin => \car_control_inst|x_pos[4]~16\,
	combout => \car_control_inst|x_pos[5]~17_combout\,
	cout => \car_control_inst|x_pos[5]~18\);

-- Location: FF_X23_Y21_N19
\car_control_inst|x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[5]~17_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(5));

-- Location: FF_X23_Y21_N21
\car_control_inst|x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[6]~19_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(6));

-- Location: LCCOMB_X23_Y21_N2
\car_control_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|LessThan1~0_combout\ = ((!\car_control_inst|x_pos\(3) & ((!\car_control_inst|x_pos\(2)) # (!\car_control_inst|x_pos\(1))))) # (!\car_control_inst|x_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(1),
	datab => \car_control_inst|x_pos\(4),
	datac => \car_control_inst|x_pos\(3),
	datad => \car_control_inst|x_pos\(2),
	combout => \car_control_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\car_control_inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|process_0~1_combout\ = (\car_control_inst|process_0~0_combout\ & ((\car_control_inst|x_pos\(6)) # ((\car_control_inst|LessThan1~0_combout\) # (!\car_control_inst|x_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(6),
	datab => \car_control_inst|LessThan1~0_combout\,
	datac => \car_control_inst|process_0~0_combout\,
	datad => \car_control_inst|x_pos\(5),
	combout => \car_control_inst|process_0~1_combout\);

-- Location: FF_X23_Y21_N31
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

-- Location: LCCOMB_X23_Y21_N30
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

-- Location: LCCOMB_X23_Y21_N26
\car_control_inst|x_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \car_control_inst|x_pos[9]~25_combout\ = \car_control_inst|process_0~2_combout\ $ (\car_control_inst|x_pos[8]~24\ $ (\car_control_inst|x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|process_0~2_combout\,
	datad => \car_control_inst|x_pos\(9),
	cin => \car_control_inst|x_pos[8]~24\,
	combout => \car_control_inst|x_pos[9]~25_combout\);

-- Location: FF_X23_Y21_N27
\car_control_inst|x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \car_control_inst|x_pos[9]~25_combout\,
	clrn => \reset~input_o\,
	ena => \car_control_inst|x_pos[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \car_control_inst|x_pos\(9));

-- Location: LCCOMB_X22_Y21_N18
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\car_control_inst|x_pos\(2) & (\car_control_inst|x_pos\(3) $ (VCC))) # (!\car_control_inst|x_pos\(2) & (\car_control_inst|x_pos\(3) & VCC))
-- \Add0~1\ = CARRY((\car_control_inst|x_pos\(2) & \car_control_inst|x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(2),
	datab => \car_control_inst|x_pos\(3),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X22_Y21_N20
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\car_control_inst|x_pos\(4) & (\Add0~1\ & VCC)) # (!\car_control_inst|x_pos\(4) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\car_control_inst|x_pos\(4) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(4),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X22_Y21_N22
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\car_control_inst|x_pos\(5) & (\Add0~3\ $ (GND))) # (!\car_control_inst|x_pos\(5) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\car_control_inst|x_pos\(5) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(5),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X22_Y21_N24
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\car_control_inst|x_pos\(6) & ((\Add0~5\) # (GND))) # (!\car_control_inst|x_pos\(6) & (!\Add0~5\))
-- \Add0~7\ = CARRY((\car_control_inst|x_pos\(6)) # (!\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(6),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X22_Y21_N26
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\car_control_inst|x_pos\(7) & (\Add0~7\ $ (GND))) # (!\car_control_inst|x_pos\(7) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\car_control_inst|x_pos\(7) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \car_control_inst|x_pos\(7),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X22_Y21_N28
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\car_control_inst|x_pos\(8) & ((\Add0~9\) # (GND))) # (!\car_control_inst|x_pos\(8) & (!\Add0~9\))
-- \Add0~11\ = CARRY((\car_control_inst|x_pos\(8)) # (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(8),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X22_Y21_N30
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \car_control_inst|x_pos\(9) $ (!\Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(9),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X22_Y21_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\car_control_inst|x_pos\(1) & !\hvsync_gen|local_hpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(1),
	datab => \hvsync_gen|local_hpos\(1),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y21_N2
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\car_control_inst|x_pos\(2) & ((\hvsync_gen|local_hpos\(2)) # (!\LessThan1~1_cout\))) # (!\car_control_inst|x_pos\(2) & (\hvsync_gen|local_hpos\(2) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(2),
	datab => \hvsync_gen|local_hpos\(2),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y21_N4
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\hvsync_gen|local_hpos\(3) & (\Add0~0_combout\ & !\LessThan1~3_cout\)) # (!\hvsync_gen|local_hpos\(3) & ((\Add0~0_combout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y21_N6
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\hvsync_gen|local_hpos\(4) & ((!\LessThan1~5_cout\) # (!\Add0~2_combout\))) # (!\hvsync_gen|local_hpos\(4) & (!\Add0~2_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y21_N8
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\Add0~4_combout\ & ((!\LessThan1~7_cout\) # (!\hvsync_gen|local_hpos\(5)))) # (!\Add0~4_combout\ & (!\hvsync_gen|local_hpos\(5) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \hvsync_gen|local_hpos\(5),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y21_N10
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\hvsync_gen|local_hpos\(6) & ((!\LessThan1~9_cout\) # (!\Add0~6_combout\))) # (!\hvsync_gen|local_hpos\(6) & (!\Add0~6_combout\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(6),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y21_N12
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\Add0~8_combout\ & ((!\LessThan1~11_cout\) # (!\hvsync_gen|local_hpos\(7)))) # (!\Add0~8_combout\ & (!\hvsync_gen|local_hpos\(7) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \hvsync_gen|local_hpos\(7),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y21_N14
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\hvsync_gen|local_hpos\(8) & ((!\LessThan1~13_cout\) # (!\Add0~10_combout\))) # (!\hvsync_gen|local_hpos\(8) & (!\Add0~10_combout\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(8),
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X22_Y21_N16
\LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (\Add0~12_combout\ & ((!\hvsync_gen|local_hpos\(9)) # (!\LessThan1~15_cout\))) # (!\Add0~12_combout\ & (!\LessThan1~15_cout\ & !\hvsync_gen|local_hpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \hvsync_gen|local_hpos\(9),
	cin => \LessThan1~15_cout\,
	combout => \LessThan1~16_combout\);

-- Location: LCCOMB_X24_Y23_N30
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\hvsync_gen|local_vpos\(4) & (\hvsync_gen|local_vpos\(3) & ((!\hvsync_gen|local_vpos\(6))))) # (!\hvsync_gen|local_vpos\(4) & (\hvsync_gen|local_vpos\(6) & ((!\hvsync_gen|local_vpos\(2)) # (!\hvsync_gen|local_vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(3),
	datab => \hvsync_gen|local_vpos\(2),
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(6),
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X21_Y21_N12
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\car_control_inst|x_pos\(1) & !\hvsync_gen|local_hpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(1),
	datab => \hvsync_gen|local_hpos\(1),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y21_N14
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

-- Location: LCCOMB_X21_Y21_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\hvsync_gen|local_hpos\(3) & (\car_control_inst|x_pos\(3) & !\LessThan0~3_cout\)) # (!\hvsync_gen|local_hpos\(3) & ((\car_control_inst|x_pos\(3)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \car_control_inst|x_pos\(3),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y21_N18
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\car_control_inst|x_pos\(4) & (\hvsync_gen|local_hpos\(4) & !\LessThan0~5_cout\)) # (!\car_control_inst|x_pos\(4) & ((\hvsync_gen|local_hpos\(4)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \car_control_inst|x_pos\(4),
	datab => \hvsync_gen|local_hpos\(4),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y21_N20
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\hvsync_gen|local_hpos\(5) & (\car_control_inst|x_pos\(5) & !\LessThan0~7_cout\)) # (!\hvsync_gen|local_hpos\(5) & ((\car_control_inst|x_pos\(5)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \car_control_inst|x_pos\(5),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y21_N22
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

-- Location: LCCOMB_X21_Y21_N24
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

-- Location: LCCOMB_X21_Y21_N26
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

-- Location: LCCOMB_X21_Y21_N28
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

-- Location: LCCOMB_X24_Y23_N28
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\LessThan0~16_combout\ & (!\hvsync_gen|local_vpos\(9) & (\hvsync_gen|local_vpos\(7) & \hvsync_gen|local_vpos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~16_combout\,
	datab => \hvsync_gen|local_vpos\(9),
	datac => \hvsync_gen|local_vpos\(7),
	datad => \hvsync_gen|local_vpos\(8),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X24_Y23_N24
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\process_1~1_combout\ & (\process_1~0_combout\ & (\hvsync_gen|local_vpos\(4) $ (!\hvsync_gen|local_vpos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datab => \process_1~0_combout\,
	datac => \hvsync_gen|local_vpos\(4),
	datad => \hvsync_gen|local_vpos\(5),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X24_Y21_N14
\rgb_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~0_combout\ = (!\track_obstacle_inst|collision_detected~q\ & ((!\process_1~2_combout\) # (!\LessThan1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~16_combout\,
	datac => \process_1~2_combout\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \rgb_r~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\rgb_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~1_combout\ = (\rgb_g~0_combout\ & ((\track_obstacle_inst|track_color\(9)) # (!\rgb_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_g~0_combout\,
	datab => \track_obstacle_inst|track_color\(9),
	datac => \rgb_r~0_combout\,
	combout => \rgb_r~1_combout\);

-- Location: LCCOMB_X24_Y21_N24
\rgb_r[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r[0]~reg0feeder_combout\ = \rgb_r~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_r~1_combout\,
	combout => \rgb_r[0]~reg0feeder_combout\);

-- Location: FF_X24_Y21_N25
\rgb_r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_r[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_r[0]~reg0_q\);

-- Location: FF_X24_Y21_N19
\rgb_r[1]~reg0\ : dffeas
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
	q => \rgb_r[1]~reg0_q\);

-- Location: LCCOMB_X23_Y24_N6
\track_obstacle_inst|LessThan27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~1_cout\ = CARRY((!\hvsync_gen|local_vpos\(0) & \track_obstacle_inst|obstacle_y[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(0),
	datab => \track_obstacle_inst|obstacle_y[0][0]~q\,
	datad => VCC,
	cout => \track_obstacle_inst|LessThan27~1_cout\);

-- Location: LCCOMB_X23_Y24_N8
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

-- Location: LCCOMB_X23_Y24_N10
\track_obstacle_inst|LessThan27~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~5_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][2]~q\ & ((!\track_obstacle_inst|LessThan27~3_cout\) # (!\hvsync_gen|local_vpos\(2)))) # (!\track_obstacle_inst|obstacle_y[0][2]~q\ & (!\hvsync_gen|local_vpos\(2) & 
-- !\track_obstacle_inst|LessThan27~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][2]~q\,
	datab => \hvsync_gen|local_vpos\(2),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~3_cout\,
	cout => \track_obstacle_inst|LessThan27~5_cout\);

-- Location: LCCOMB_X23_Y24_N12
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

-- Location: LCCOMB_X23_Y24_N14
\track_obstacle_inst|LessThan27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~9_cout\ = CARRY((\track_obstacle_inst|Add8~2_combout\ & ((!\track_obstacle_inst|LessThan27~7_cout\) # (!\hvsync_gen|local_vpos\(4)))) # (!\track_obstacle_inst|Add8~2_combout\ & (!\hvsync_gen|local_vpos\(4) & 
-- !\track_obstacle_inst|LessThan27~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~2_combout\,
	datab => \hvsync_gen|local_vpos\(4),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~7_cout\,
	cout => \track_obstacle_inst|LessThan27~9_cout\);

-- Location: LCCOMB_X23_Y24_N16
\track_obstacle_inst|LessThan27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~11_cout\ = CARRY((\track_obstacle_inst|Add8~4_combout\ & (\hvsync_gen|local_vpos\(5) & !\track_obstacle_inst|LessThan27~9_cout\)) # (!\track_obstacle_inst|Add8~4_combout\ & ((\hvsync_gen|local_vpos\(5)) # 
-- (!\track_obstacle_inst|LessThan27~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add8~4_combout\,
	datab => \hvsync_gen|local_vpos\(5),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~9_cout\,
	cout => \track_obstacle_inst|LessThan27~11_cout\);

-- Location: LCCOMB_X23_Y24_N18
\track_obstacle_inst|LessThan27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~13_cout\ = CARRY((\hvsync_gen|local_vpos\(6) & (\track_obstacle_inst|Add8~6_combout\ & !\track_obstacle_inst|LessThan27~11_cout\)) # (!\hvsync_gen|local_vpos\(6) & ((\track_obstacle_inst|Add8~6_combout\) # 
-- (!\track_obstacle_inst|LessThan27~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(6),
	datab => \track_obstacle_inst|Add8~6_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan27~11_cout\,
	cout => \track_obstacle_inst|LessThan27~13_cout\);

-- Location: LCCOMB_X23_Y24_N20
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

-- Location: LCCOMB_X23_Y24_N22
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

-- Location: LCCOMB_X23_Y24_N24
\track_obstacle_inst|LessThan27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan27~18_combout\ = (\hvsync_gen|local_vpos\(9) & (\track_obstacle_inst|Add8~12_combout\ & \track_obstacle_inst|LessThan27~17_cout\)) # (!\hvsync_gen|local_vpos\(9) & ((\track_obstacle_inst|Add8~12_combout\) # 
-- (\track_obstacle_inst|LessThan27~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(9),
	datab => \track_obstacle_inst|Add8~12_combout\,
	cin => \track_obstacle_inst|LessThan27~17_cout\,
	combout => \track_obstacle_inst|LessThan27~18_combout\);

-- Location: LCCOMB_X24_Y24_N10
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

-- Location: LCCOMB_X24_Y24_N12
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

-- Location: LCCOMB_X24_Y24_N14
\track_obstacle_inst|LessThan26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~5_cout\ = CARRY((\hvsync_gen|local_vpos\(2) & (\track_obstacle_inst|obstacle_y[0][2]~q\ & !\track_obstacle_inst|LessThan26~3_cout\)) # (!\hvsync_gen|local_vpos\(2) & ((\track_obstacle_inst|obstacle_y[0][2]~q\) # 
-- (!\track_obstacle_inst|LessThan26~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(2),
	datab => \track_obstacle_inst|obstacle_y[0][2]~q\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~3_cout\,
	cout => \track_obstacle_inst|LessThan26~5_cout\);

-- Location: LCCOMB_X24_Y24_N16
\track_obstacle_inst|LessThan26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~7_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][3]~q\ & (\hvsync_gen|local_vpos\(3) & !\track_obstacle_inst|LessThan26~5_cout\)) # (!\track_obstacle_inst|obstacle_y[0][3]~q\ & ((\hvsync_gen|local_vpos\(3)) # 
-- (!\track_obstacle_inst|LessThan26~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][3]~q\,
	datab => \hvsync_gen|local_vpos\(3),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~5_cout\,
	cout => \track_obstacle_inst|LessThan26~7_cout\);

-- Location: LCCOMB_X24_Y24_N18
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

-- Location: LCCOMB_X24_Y24_N20
\track_obstacle_inst|LessThan26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~11_cout\ = CARRY((\track_obstacle_inst|obstacle_y[0][5]~q\ & (\hvsync_gen|local_vpos\(5) & !\track_obstacle_inst|LessThan26~9_cout\)) # (!\track_obstacle_inst|obstacle_y[0][5]~q\ & ((\hvsync_gen|local_vpos\(5)) # 
-- (!\track_obstacle_inst|LessThan26~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_y[0][5]~q\,
	datab => \hvsync_gen|local_vpos\(5),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan26~9_cout\,
	cout => \track_obstacle_inst|LessThan26~11_cout\);

-- Location: LCCOMB_X24_Y24_N22
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

-- Location: LCCOMB_X24_Y24_N24
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

-- Location: LCCOMB_X24_Y24_N26
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

-- Location: LCCOMB_X24_Y24_N28
\track_obstacle_inst|LessThan26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan26~18_combout\ = (\hvsync_gen|local_vpos\(9) & (\track_obstacle_inst|obstacle_y[0][9]~q\ & \track_obstacle_inst|LessThan26~17_cout\)) # (!\hvsync_gen|local_vpos\(9) & ((\track_obstacle_inst|obstacle_y[0][9]~q\) # 
-- (\track_obstacle_inst|LessThan26~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_vpos\(9),
	datab => \track_obstacle_inst|obstacle_y[0][9]~q\,
	cin => \track_obstacle_inst|LessThan26~17_cout\,
	combout => \track_obstacle_inst|LessThan26~18_combout\);

-- Location: LCCOMB_X23_Y20_N6
\track_obstacle_inst|process_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~10_combout\ = (\track_obstacle_inst|LessThan26~18_combout\) # (!\track_obstacle_inst|LessThan27~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|LessThan27~18_combout\,
	datad => \track_obstacle_inst|LessThan26~18_combout\,
	combout => \track_obstacle_inst|process_1~10_combout\);

-- Location: LCCOMB_X22_Y23_N16
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

-- Location: LCCOMB_X22_Y23_N18
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

-- Location: LCCOMB_X22_Y23_N20
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

-- Location: LCCOMB_X22_Y23_N22
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

-- Location: LCCOMB_X22_Y23_N24
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

-- Location: LCCOMB_X22_Y23_N26
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

-- Location: LCCOMB_X22_Y23_N28
\track_obstacle_inst|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|Add7~12_combout\ = \track_obstacle_inst|Add7~11\ $ (!\track_obstacle_inst|obstacle_x[0][9]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \track_obstacle_inst|obstacle_x[0][9]~2_combout\,
	cin => \track_obstacle_inst|Add7~11\,
	combout => \track_obstacle_inst|Add7~12_combout\);

-- Location: LCCOMB_X22_Y20_N10
\track_obstacle_inst|LessThan25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~1_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][0]~38_combout\ & !\hvsync_gen|local_hpos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][0]~38_combout\,
	datab => \hvsync_gen|local_hpos\(0),
	datad => VCC,
	cout => \track_obstacle_inst|LessThan25~1_cout\);

-- Location: LCCOMB_X22_Y20_N12
\track_obstacle_inst|LessThan25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~3_cout\ = CARRY((\hvsync_gen|local_hpos\(1) & ((!\track_obstacle_inst|LessThan25~1_cout\) # (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\))) # (!\hvsync_gen|local_hpos\(1) & 
-- (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\ & !\track_obstacle_inst|LessThan25~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~1_cout\,
	cout => \track_obstacle_inst|LessThan25~3_cout\);

-- Location: LCCOMB_X22_Y20_N14
\track_obstacle_inst|LessThan25~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~5_cout\ = CARRY((\hvsync_gen|local_hpos\(2) & (\track_obstacle_inst|obstacle_x[0][2]~30_combout\ & !\track_obstacle_inst|LessThan25~3_cout\)) # (!\hvsync_gen|local_hpos\(2) & 
-- ((\track_obstacle_inst|obstacle_x[0][2]~30_combout\) # (!\track_obstacle_inst|LessThan25~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \track_obstacle_inst|obstacle_x[0][2]~30_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~3_cout\,
	cout => \track_obstacle_inst|LessThan25~5_cout\);

-- Location: LCCOMB_X22_Y20_N16
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

-- Location: LCCOMB_X22_Y20_N18
\track_obstacle_inst|LessThan25~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~9_cout\ = CARRY((\track_obstacle_inst|Add7~2_combout\ & ((!\track_obstacle_inst|LessThan25~7_cout\) # (!\hvsync_gen|local_hpos\(4)))) # (!\track_obstacle_inst|Add7~2_combout\ & (!\hvsync_gen|local_hpos\(4) & 
-- !\track_obstacle_inst|LessThan25~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add7~2_combout\,
	datab => \hvsync_gen|local_hpos\(4),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~7_cout\,
	cout => \track_obstacle_inst|LessThan25~9_cout\);

-- Location: LCCOMB_X22_Y20_N20
\track_obstacle_inst|LessThan25~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~11_cout\ = CARRY((\hvsync_gen|local_hpos\(5) & ((!\track_obstacle_inst|LessThan25~9_cout\) # (!\track_obstacle_inst|Add7~4_combout\))) # (!\hvsync_gen|local_hpos\(5) & (!\track_obstacle_inst|Add7~4_combout\ & 
-- !\track_obstacle_inst|LessThan25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \track_obstacle_inst|Add7~4_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~9_cout\,
	cout => \track_obstacle_inst|LessThan25~11_cout\);

-- Location: LCCOMB_X22_Y20_N22
\track_obstacle_inst|LessThan25~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~13_cout\ = CARRY((\hvsync_gen|local_hpos\(6) & (\track_obstacle_inst|Add7~6_combout\ & !\track_obstacle_inst|LessThan25~11_cout\)) # (!\hvsync_gen|local_hpos\(6) & ((\track_obstacle_inst|Add7~6_combout\) # 
-- (!\track_obstacle_inst|LessThan25~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(6),
	datab => \track_obstacle_inst|Add7~6_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~11_cout\,
	cout => \track_obstacle_inst|LessThan25~13_cout\);

-- Location: LCCOMB_X22_Y20_N24
\track_obstacle_inst|LessThan25~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~15_cout\ = CARRY((\track_obstacle_inst|Add7~8_combout\ & (\hvsync_gen|local_hpos\(7) & !\track_obstacle_inst|LessThan25~13_cout\)) # (!\track_obstacle_inst|Add7~8_combout\ & ((\hvsync_gen|local_hpos\(7)) # 
-- (!\track_obstacle_inst|LessThan25~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add7~8_combout\,
	datab => \hvsync_gen|local_hpos\(7),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~13_cout\,
	cout => \track_obstacle_inst|LessThan25~15_cout\);

-- Location: LCCOMB_X22_Y20_N26
\track_obstacle_inst|LessThan25~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~17_cout\ = CARRY((\track_obstacle_inst|Add7~10_combout\ & ((!\track_obstacle_inst|LessThan25~15_cout\) # (!\hvsync_gen|local_hpos\(8)))) # (!\track_obstacle_inst|Add7~10_combout\ & (!\hvsync_gen|local_hpos\(8) & 
-- !\track_obstacle_inst|LessThan25~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|Add7~10_combout\,
	datab => \hvsync_gen|local_hpos\(8),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan25~15_cout\,
	cout => \track_obstacle_inst|LessThan25~17_cout\);

-- Location: LCCOMB_X22_Y20_N28
\track_obstacle_inst|LessThan25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan25~18_combout\ = (\hvsync_gen|local_hpos\(9) & (\track_obstacle_inst|LessThan25~17_cout\ & \track_obstacle_inst|Add7~12_combout\)) # (!\hvsync_gen|local_hpos\(9) & ((\track_obstacle_inst|LessThan25~17_cout\) # 
-- (\track_obstacle_inst|Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(9),
	datad => \track_obstacle_inst|Add7~12_combout\,
	cin => \track_obstacle_inst|LessThan25~17_cout\,
	combout => \track_obstacle_inst|LessThan25~18_combout\);

-- Location: LCCOMB_X21_Y20_N6
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

-- Location: LCCOMB_X21_Y20_N8
\track_obstacle_inst|LessThan24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~3_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][1]~34_combout\ & (\hvsync_gen|local_hpos\(1) & !\track_obstacle_inst|LessThan24~1_cout\)) # (!\track_obstacle_inst|obstacle_x[0][1]~34_combout\ & 
-- ((\hvsync_gen|local_hpos\(1)) # (!\track_obstacle_inst|LessThan24~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][1]~34_combout\,
	datab => \hvsync_gen|local_hpos\(1),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~1_cout\,
	cout => \track_obstacle_inst|LessThan24~3_cout\);

-- Location: LCCOMB_X21_Y20_N10
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

-- Location: LCCOMB_X21_Y20_N12
\track_obstacle_inst|LessThan24~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~7_cout\ = CARRY((\hvsync_gen|local_hpos\(3) & ((!\track_obstacle_inst|LessThan24~5_cout\) # (!\track_obstacle_inst|obstacle_x[0][3]~26_combout\))) # (!\hvsync_gen|local_hpos\(3) & 
-- (!\track_obstacle_inst|obstacle_x[0][3]~26_combout\ & !\track_obstacle_inst|LessThan24~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \track_obstacle_inst|obstacle_x[0][3]~26_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~5_cout\,
	cout => \track_obstacle_inst|LessThan24~7_cout\);

-- Location: LCCOMB_X21_Y20_N14
\track_obstacle_inst|LessThan24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~9_cout\ = CARRY((\hvsync_gen|local_hpos\(4) & (\track_obstacle_inst|obstacle_x[0][4]~22_combout\ & !\track_obstacle_inst|LessThan24~7_cout\)) # (!\hvsync_gen|local_hpos\(4) & 
-- ((\track_obstacle_inst|obstacle_x[0][4]~22_combout\) # (!\track_obstacle_inst|LessThan24~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(4),
	datab => \track_obstacle_inst|obstacle_x[0][4]~22_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~7_cout\,
	cout => \track_obstacle_inst|LessThan24~9_cout\);

-- Location: LCCOMB_X21_Y20_N16
\track_obstacle_inst|LessThan24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~11_cout\ = CARRY((\hvsync_gen|local_hpos\(5) & ((!\track_obstacle_inst|LessThan24~9_cout\) # (!\track_obstacle_inst|obstacle_x[0][5]~18_combout\))) # (!\hvsync_gen|local_hpos\(5) & 
-- (!\track_obstacle_inst|obstacle_x[0][5]~18_combout\ & !\track_obstacle_inst|LessThan24~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \track_obstacle_inst|obstacle_x[0][5]~18_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~9_cout\,
	cout => \track_obstacle_inst|LessThan24~11_cout\);

-- Location: LCCOMB_X21_Y20_N18
\track_obstacle_inst|LessThan24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~13_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][6]~14_combout\ & ((!\track_obstacle_inst|LessThan24~11_cout\) # (!\hvsync_gen|local_hpos\(6)))) # (!\track_obstacle_inst|obstacle_x[0][6]~14_combout\ & 
-- (!\hvsync_gen|local_hpos\(6) & !\track_obstacle_inst|LessThan24~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][6]~14_combout\,
	datab => \hvsync_gen|local_hpos\(6),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~11_cout\,
	cout => \track_obstacle_inst|LessThan24~13_cout\);

-- Location: LCCOMB_X21_Y20_N20
\track_obstacle_inst|LessThan24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~15_cout\ = CARRY((\hvsync_gen|local_hpos\(7) & ((!\track_obstacle_inst|LessThan24~13_cout\) # (!\track_obstacle_inst|obstacle_x[0][7]~10_combout\))) # (!\hvsync_gen|local_hpos\(7) & 
-- (!\track_obstacle_inst|obstacle_x[0][7]~10_combout\ & !\track_obstacle_inst|LessThan24~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(7),
	datab => \track_obstacle_inst|obstacle_x[0][7]~10_combout\,
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~13_cout\,
	cout => \track_obstacle_inst|LessThan24~15_cout\);

-- Location: LCCOMB_X21_Y20_N22
\track_obstacle_inst|LessThan24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~17_cout\ = CARRY((\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & ((!\track_obstacle_inst|LessThan24~15_cout\) # (!\hvsync_gen|local_hpos\(8)))) # (!\track_obstacle_inst|obstacle_x[0][8]~6_combout\ & 
-- (!\hvsync_gen|local_hpos\(8) & !\track_obstacle_inst|LessThan24~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|obstacle_x[0][8]~6_combout\,
	datab => \hvsync_gen|local_hpos\(8),
	datad => VCC,
	cin => \track_obstacle_inst|LessThan24~15_cout\,
	cout => \track_obstacle_inst|LessThan24~17_cout\);

-- Location: LCCOMB_X21_Y20_N24
\track_obstacle_inst|LessThan24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|LessThan24~18_combout\ = (\hvsync_gen|local_hpos\(9) & (\track_obstacle_inst|LessThan24~17_cout\ & \track_obstacle_inst|obstacle_x[0][9]~2_combout\)) # (!\hvsync_gen|local_hpos\(9) & ((\track_obstacle_inst|LessThan24~17_cout\) # 
-- (\track_obstacle_inst|obstacle_x[0][9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(9),
	datad => \track_obstacle_inst|obstacle_x[0][9]~2_combout\,
	cin => \track_obstacle_inst|LessThan24~17_cout\,
	combout => \track_obstacle_inst|LessThan24~18_combout\);

-- Location: LCCOMB_X24_Y21_N26
\track_obstacle_inst|track_color~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~11_combout\ = (\reset~input_o\ & (!\track_obstacle_inst|process_1~10_combout\ & (\track_obstacle_inst|LessThan25~18_combout\ & !\track_obstacle_inst|LessThan24~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|process_1~10_combout\,
	datac => \track_obstacle_inst|LessThan25~18_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~11_combout\);

-- Location: LCCOMB_X22_Y20_N4
\track_obstacle_inst|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~3_combout\ = (!\hvsync_gen|local_hpos\(9) & (\hvsync_gen|local_hpos\(8) & !\hvsync_gen|local_hpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(9),
	datab => \hvsync_gen|local_hpos\(8),
	datac => \hvsync_gen|local_hpos\(7),
	combout => \track_obstacle_inst|process_1~3_combout\);

-- Location: LCCOMB_X22_Y20_N30
\track_obstacle_inst|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~4_combout\ = (\track_obstacle_inst|process_1~3_combout\ & ((\hvsync_gen|local_hpos\(5) & (\hvsync_gen|local_hpos\(4) & !\hvsync_gen|local_hpos\(6))) # (!\hvsync_gen|local_hpos\(5) & (!\hvsync_gen|local_hpos\(4) & 
-- \hvsync_gen|local_hpos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \hvsync_gen|local_hpos\(4),
	datac => \track_obstacle_inst|process_1~3_combout\,
	datad => \hvsync_gen|local_hpos\(6),
	combout => \track_obstacle_inst|process_1~4_combout\);

-- Location: LCCOMB_X22_Y20_N2
\track_obstacle_inst|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~2_combout\ = (\hvsync_gen|local_hpos\(2) & (((\hvsync_gen|local_hpos\(1)) # (!\hvsync_gen|local_hpos\(4))))) # (!\hvsync_gen|local_hpos\(2) & (\hvsync_gen|local_hpos\(0) & (\hvsync_gen|local_hpos\(1) & 
-- !\hvsync_gen|local_hpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(2),
	datab => \hvsync_gen|local_hpos\(0),
	datac => \hvsync_gen|local_hpos\(1),
	datad => \hvsync_gen|local_hpos\(4),
	combout => \track_obstacle_inst|process_1~2_combout\);

-- Location: LCCOMB_X22_Y20_N8
\track_obstacle_inst|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~5_combout\ = ((\hvsync_gen|local_hpos\(3) & (!\hvsync_gen|local_hpos\(5) & \track_obstacle_inst|process_1~2_combout\)) # (!\hvsync_gen|local_hpos\(3) & (\hvsync_gen|local_hpos\(5) & 
-- !\track_obstacle_inst|process_1~2_combout\))) # (!\track_obstacle_inst|process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(3),
	datab => \hvsync_gen|local_hpos\(5),
	datac => \track_obstacle_inst|process_1~4_combout\,
	datad => \track_obstacle_inst|process_1~2_combout\,
	combout => \track_obstacle_inst|process_1~5_combout\);

-- Location: LCCOMB_X23_Y20_N4
\track_obstacle_inst|track_color~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~9_combout\ = (\reset~input_o\ & !\track_obstacle_inst|process_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|process_1~5_combout\,
	combout => \track_obstacle_inst|track_color~9_combout\);

-- Location: LCCOMB_X22_Y20_N6
\track_obstacle_inst|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~6_combout\ = (\hvsync_gen|local_hpos\(1)) # ((\hvsync_gen|local_hpos\(0)) # ((\hvsync_gen|local_hpos\(3)) # (\hvsync_gen|local_hpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(1),
	datab => \hvsync_gen|local_hpos\(0),
	datac => \hvsync_gen|local_hpos\(3),
	datad => \hvsync_gen|local_hpos\(2),
	combout => \track_obstacle_inst|process_1~6_combout\);

-- Location: LCCOMB_X21_Y21_N6
\track_obstacle_inst|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~7_combout\ = (\hvsync_gen|local_hpos\(5) & (\hvsync_gen|local_hpos\(4) & \track_obstacle_inst|process_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync_gen|local_hpos\(5),
	datac => \hvsync_gen|local_hpos\(4),
	datad => \track_obstacle_inst|process_1~6_combout\,
	combout => \track_obstacle_inst|process_1~7_combout\);

-- Location: LCCOMB_X21_Y21_N0
\track_obstacle_inst|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~8_combout\ = (\hvsync_gen|local_hpos\(9) & ((\track_obstacle_inst|process_1~7_combout\) # ((\hvsync_gen|local_hpos\(6)) # (!\hvsync_gen|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~7_combout\,
	datab => \hvsync_gen|LessThan4~0_combout\,
	datac => \hvsync_gen|local_hpos\(6),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \track_obstacle_inst|process_1~8_combout\);

-- Location: LCCOMB_X21_Y21_N10
\track_obstacle_inst|process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~9_combout\ = (!\hvsync_gen|local_hpos\(9) & (((!\hvsync_gen|local_hpos\(5) & !\hvsync_gen|local_hpos\(4))) # (!\hvsync_gen|local_hpos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync_gen|local_hpos\(5),
	datab => \hvsync_gen|local_hpos\(6),
	datac => \hvsync_gen|local_hpos\(4),
	datad => \hvsync_gen|local_hpos\(9),
	combout => \track_obstacle_inst|process_1~9_combout\);

-- Location: LCCOMB_X24_Y21_N8
\track_obstacle_inst|track_color~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~10_combout\ = (\reset~input_o\ & ((\track_obstacle_inst|process_1~8_combout\) # ((\hvsync_gen|LessThan4~0_combout\ & \track_obstacle_inst|process_1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~8_combout\,
	datab => \hvsync_gen|LessThan4~0_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|process_1~9_combout\,
	combout => \track_obstacle_inst|track_color~10_combout\);

-- Location: LCCOMB_X24_Y21_N0
\track_obstacle_inst|track_color~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~12_combout\ = (\track_obstacle_inst|track_color~11_combout\) # ((\track_obstacle_inst|track_color~9_combout\) # ((\track_obstacle_inst|track_color~10_combout\) # (\track_obstacle_inst|collision_detected~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~11_combout\,
	datab => \track_obstacle_inst|track_color~9_combout\,
	datac => \track_obstacle_inst|track_color~10_combout\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~12_combout\);

-- Location: FF_X24_Y21_N1
\track_obstacle_inst|track_color[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \track_obstacle_inst|track_color~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \track_obstacle_inst|track_color\(10));

-- Location: LCCOMB_X24_Y21_N4
\rgb_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~2_combout\ = (\rgb_g~0_combout\ & ((\track_obstacle_inst|track_color\(10)) # (!\rgb_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_g~0_combout\,
	datab => \track_obstacle_inst|track_color\(10),
	datac => \rgb_r~0_combout\,
	combout => \rgb_r~2_combout\);

-- Location: FF_X24_Y21_N5
\rgb_r[2]~reg0\ : dffeas
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
	q => \rgb_r[2]~reg0_q\);

-- Location: LCCOMB_X24_Y21_N12
\track_obstacle_inst|track_color~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~13_combout\ = (\reset~input_o\ & (!\track_obstacle_inst|process_1~10_combout\ & (\track_obstacle_inst|LessThan25~18_combout\ & !\track_obstacle_inst|LessThan24~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \track_obstacle_inst|process_1~10_combout\,
	datac => \track_obstacle_inst|LessThan25~18_combout\,
	datad => \track_obstacle_inst|LessThan24~18_combout\,
	combout => \track_obstacle_inst|track_color~13_combout\);

-- Location: LCCOMB_X21_Y21_N30
\track_obstacle_inst|process_1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|process_1~11_combout\ = (\track_obstacle_inst|process_1~8_combout\) # ((\track_obstacle_inst|process_1~9_combout\ & (!\hvsync_gen|local_hpos\(8) & !\hvsync_gen|local_hpos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~9_combout\,
	datab => \track_obstacle_inst|process_1~8_combout\,
	datac => \hvsync_gen|local_hpos\(8),
	datad => \hvsync_gen|local_hpos\(7),
	combout => \track_obstacle_inst|process_1~11_combout\);

-- Location: LCCOMB_X24_Y21_N2
\track_obstacle_inst|track_color~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~14_combout\ = (\track_obstacle_inst|collision_detected~q\) # ((\track_obstacle_inst|track_color~13_combout\) # ((\track_obstacle_inst|track_color~9_combout\ & !\track_obstacle_inst|process_1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|collision_detected~q\,
	datab => \track_obstacle_inst|track_color~13_combout\,
	datac => \track_obstacle_inst|track_color~9_combout\,
	datad => \track_obstacle_inst|process_1~11_combout\,
	combout => \track_obstacle_inst|track_color~14_combout\);

-- Location: FF_X24_Y21_N3
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

-- Location: LCCOMB_X24_Y21_N6
\rgb_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~3_combout\ = (\rgb_g~0_combout\ & ((\track_obstacle_inst|track_color\(11)) # (!\rgb_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_r~0_combout\,
	datac => \rgb_g~0_combout\,
	datad => \track_obstacle_inst|track_color\(11),
	combout => \rgb_r~3_combout\);

-- Location: FF_X24_Y21_N7
\rgb_r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_r[3]~reg0_q\);

-- Location: LCCOMB_X21_Y22_N30
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

-- Location: LCCOMB_X23_Y20_N28
\track_obstacle_inst|track_color~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~16_combout\ = (\track_obstacle_inst|track_color~15_combout\ & ((\track_obstacle_inst|process_1~10_combout\) # ((\track_obstacle_inst|LessThan24~18_combout\) # (!\track_obstacle_inst|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~10_combout\,
	datab => \track_obstacle_inst|LessThan24~18_combout\,
	datac => \track_obstacle_inst|track_color~15_combout\,
	datad => \track_obstacle_inst|LessThan25~18_combout\,
	combout => \track_obstacle_inst|track_color~16_combout\);

-- Location: FF_X23_Y20_N29
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

-- Location: LCCOMB_X24_Y21_N20
\rgb_r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_r~4_combout\ = ((\track_obstacle_inst|collision_detected~q\) # ((\process_1~2_combout\ & \LessThan1~16_combout\))) # (!\rgb_g~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~2_combout\,
	datab => \LessThan1~16_combout\,
	datac => \rgb_g~0_combout\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \rgb_r~4_combout\);

-- Location: LCCOMB_X23_Y20_N2
\rgb_g~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g~1_combout\ = (\rgb_r~4_combout\ & (!\track_obstacle_inst|collision_detected~q\ & ((\rgb_g~0_combout\)))) # (!\rgb_r~4_combout\ & (((\track_obstacle_inst|track_color\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|collision_detected~q\,
	datab => \track_obstacle_inst|track_color\(5),
	datac => \rgb_g~0_combout\,
	datad => \rgb_r~4_combout\,
	combout => \rgb_g~1_combout\);

-- Location: LCCOMB_X23_Y20_N8
\rgb_g[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g[0]~reg0feeder_combout\ = \rgb_g~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_g~1_combout\,
	combout => \rgb_g[0]~reg0feeder_combout\);

-- Location: FF_X23_Y20_N9
\rgb_g[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[0]~reg0_q\);

-- Location: FF_X23_Y20_N3
\rgb_g[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[1]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N24
\track_obstacle_inst|track_color~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~21_combout\ = (\reset~input_o\ & (!\track_obstacle_inst|collision_detected~q\ & ((\track_obstacle_inst|process_1~11_combout\) # (!\track_obstacle_inst|process_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~5_combout\,
	datab => \track_obstacle_inst|process_1~11_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~21_combout\);

-- Location: LCCOMB_X23_Y20_N30
\track_obstacle_inst|track_color~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~17_combout\ = (\track_obstacle_inst|track_color~21_combout\ & ((\track_obstacle_inst|process_1~10_combout\) # ((\track_obstacle_inst|LessThan24~18_combout\) # (!\track_obstacle_inst|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~10_combout\,
	datab => \track_obstacle_inst|LessThan24~18_combout\,
	datac => \track_obstacle_inst|track_color~21_combout\,
	datad => \track_obstacle_inst|LessThan25~18_combout\,
	combout => \track_obstacle_inst|track_color~17_combout\);

-- Location: FF_X23_Y20_N31
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

-- Location: LCCOMB_X23_Y20_N12
\rgb_g~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g~2_combout\ = (\rgb_r~4_combout\ & (((!\track_obstacle_inst|collision_detected~q\ & \rgb_g~0_combout\)))) # (!\rgb_r~4_combout\ & (\track_obstacle_inst|track_color\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color\(6),
	datab => \track_obstacle_inst|collision_detected~q\,
	datac => \rgb_g~0_combout\,
	datad => \rgb_r~4_combout\,
	combout => \rgb_g~2_combout\);

-- Location: FF_X23_Y20_N13
\rgb_g[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[2]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N26
\track_obstacle_inst|track_color~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~22_combout\ = (\track_obstacle_inst|LessThan25~18_combout\ & (\track_obstacle_inst|LessThan27~18_combout\ & (!\track_obstacle_inst|LessThan24~18_combout\ & !\track_obstacle_inst|LessThan26~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|LessThan25~18_combout\,
	datab => \track_obstacle_inst|LessThan27~18_combout\,
	datac => \track_obstacle_inst|LessThan24~18_combout\,
	datad => \track_obstacle_inst|LessThan26~18_combout\,
	combout => \track_obstacle_inst|track_color~22_combout\);

-- Location: LCCOMB_X23_Y20_N16
\track_obstacle_inst|track_color~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~18_combout\ = (\track_obstacle_inst|track_color~15_combout\ & (!\track_obstacle_inst|process_1~11_combout\ & (!\track_obstacle_inst|track_color~22_combout\ & !\track_obstacle_inst|process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color~15_combout\,
	datab => \track_obstacle_inst|process_1~11_combout\,
	datac => \track_obstacle_inst|track_color~22_combout\,
	datad => \track_obstacle_inst|process_1~5_combout\,
	combout => \track_obstacle_inst|track_color~18_combout\);

-- Location: FF_X23_Y20_N17
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

-- Location: LCCOMB_X23_Y20_N22
\rgb_g~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_g~3_combout\ = (\rgb_r~4_combout\ & (!\track_obstacle_inst|collision_detected~q\ & ((\rgb_g~0_combout\)))) # (!\rgb_r~4_combout\ & (((\track_obstacle_inst|track_color\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|collision_detected~q\,
	datab => \track_obstacle_inst|track_color\(7),
	datac => \rgb_g~0_combout\,
	datad => \rgb_r~4_combout\,
	combout => \rgb_g~3_combout\);

-- Location: FF_X23_Y20_N23
\rgb_g[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgb_g~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_g[3]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N20
\track_obstacle_inst|track_color~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~23_combout\ = (\track_obstacle_inst|process_1~5_combout\ & (\reset~input_o\ & !\track_obstacle_inst|collision_detected~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~5_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~23_combout\);

-- Location: LCCOMB_X23_Y20_N18
\track_obstacle_inst|track_color~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~19_combout\ = (\track_obstacle_inst|track_color~23_combout\ & ((\track_obstacle_inst|process_1~10_combout\) # ((\track_obstacle_inst|LessThan24~18_combout\) # (!\track_obstacle_inst|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|process_1~10_combout\,
	datab => \track_obstacle_inst|LessThan24~18_combout\,
	datac => \track_obstacle_inst|track_color~23_combout\,
	datad => \track_obstacle_inst|LessThan25~18_combout\,
	combout => \track_obstacle_inst|track_color~19_combout\);

-- Location: FF_X23_Y20_N19
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

-- Location: LCCOMB_X23_Y20_N0
\rgb_b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~0_combout\ = (\rgb_r~4_combout\ & (!\track_obstacle_inst|collision_detected~q\ & ((\rgb_g~0_combout\)))) # (!\rgb_r~4_combout\ & (((\track_obstacle_inst|track_color\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|collision_detected~q\,
	datab => \track_obstacle_inst|track_color\(1),
	datac => \rgb_g~0_combout\,
	datad => \rgb_r~4_combout\,
	combout => \rgb_b~0_combout\);

-- Location: FF_X15_Y25_N25
\rgb_b[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \rgb_b~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_b[0]~reg0_q\);

-- Location: FF_X23_Y20_N1
\rgb_b[1]~reg0\ : dffeas
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
	q => \rgb_b[1]~reg0_q\);

-- Location: LCCOMB_X24_Y21_N30
\track_obstacle_inst|track_color~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~24_combout\ = (\track_obstacle_inst|process_1~11_combout\ & (\reset~input_o\ & !\track_obstacle_inst|collision_detected~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \track_obstacle_inst|process_1~11_combout\,
	datac => \reset~input_o\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \track_obstacle_inst|track_color~24_combout\);

-- Location: LCCOMB_X24_Y21_N22
\track_obstacle_inst|track_color~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \track_obstacle_inst|track_color~20_combout\ = (\track_obstacle_inst|track_color~24_combout\ & ((\track_obstacle_inst|LessThan24~18_combout\) # ((\track_obstacle_inst|process_1~10_combout\) # (!\track_obstacle_inst|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|LessThan24~18_combout\,
	datab => \track_obstacle_inst|track_color~24_combout\,
	datac => \track_obstacle_inst|LessThan25~18_combout\,
	datad => \track_obstacle_inst|process_1~10_combout\,
	combout => \track_obstacle_inst|track_color~20_combout\);

-- Location: FF_X24_Y21_N23
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

-- Location: LCCOMB_X24_Y21_N16
\rgb_b~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~1_combout\ = (\rgb_r~4_combout\ & (((\rgb_g~0_combout\ & !\track_obstacle_inst|collision_detected~q\)))) # (!\rgb_r~4_combout\ & (\track_obstacle_inst|track_color\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_obstacle_inst|track_color\(2),
	datab => \rgb_r~4_combout\,
	datac => \rgb_g~0_combout\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \rgb_b~1_combout\);

-- Location: FF_X24_Y21_N17
\rgb_b[2]~reg0\ : dffeas
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
	q => \rgb_b[2]~reg0_q\);

-- Location: LCCOMB_X24_Y21_N10
\rgb_b~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rgb_b~2_combout\ = (\process_1~2_combout\ & (\LessThan1~16_combout\ & (\rgb_g~0_combout\ & !\track_obstacle_inst|collision_detected~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~2_combout\,
	datab => \LessThan1~16_combout\,
	datac => \rgb_g~0_combout\,
	datad => \track_obstacle_inst|collision_detected~q\,
	combout => \rgb_b~2_combout\);

-- Location: FF_X24_Y21_N11
\rgb_b[3]~reg0\ : dffeas
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
	q => \rgb_b[3]~reg0_q\);

-- Location: LCCOMB_X1_Y23_N8
\led_left~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_left~reg0feeder_combout\ = \debouncer_left|debounced_signal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncer_left|debounced_signal~q\,
	combout => \led_left~reg0feeder_combout\);

-- Location: FF_X1_Y23_N9
\led_left~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \led_left~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_left~reg0_q\);

-- Location: FF_X24_Y27_N17
\led_right~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL:pll1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \debouncer_right|debounced_signal~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_right~reg0_q\);
END structure;


