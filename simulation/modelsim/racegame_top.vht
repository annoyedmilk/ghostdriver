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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/13/2024 20:06:06"
                                                            
-- Vhdl Test Bench template for design  :  racegame_top
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY racegame_top_vhd_tst IS
END racegame_top_vhd_tst;
ARCHITECTURE racegame_top_arch OF racegame_top_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btn_left : STD_LOGIC := '0';
SIGNAL btn_right : STD_LOGIC := '0';
SIGNAL clk_50 : STD_LOGIC := '0';
SIGNAL hsync : STD_LOGIC;
SIGNAL led_left : STD_LOGIC;
SIGNAL led_right : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC := '0';
SIGNAL rgb_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rgb_g : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rgb_r : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Segment0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL vsync : STD_LOGIC;
COMPONENT racegame_top
generic (USE_PLL : boolean := false);
	PORT (
	btn_left : IN STD_LOGIC;
	btn_right : IN STD_LOGIC;
	clk_50 : IN STD_LOGIC;
	hsync : BUFFER STD_LOGIC;
	led_left : BUFFER STD_LOGIC;
	led_right : BUFFER STD_LOGIC;
	leds : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	rgb_b : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	rgb_g : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	rgb_r : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Segment0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Segment1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Segment2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Segment3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	vsync : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : racegame_top
	PORT MAP (
-- list connections between master ports and signals
	btn_left => btn_left,
	btn_right => btn_right,
	clk_50 => clk_50,
	hsync => hsync,
	led_left => led_left,
	led_right => led_right,
	leds => leds,
	reset => reset,
	rgb_b => rgb_b,
	rgb_g => rgb_g,
	rgb_r => rgb_r,
	Segment0 => Segment0,
	Segment1 => Segment1,
	Segment2 => Segment2,
	Segment3 => Segment3,
	vsync => vsync
	);

-- Clock generation process
clk_process : PROCESS
BEGIN
    clk_50 <= '0';
    WAIT FOR 20 ns;
    clk_50 <= '1';
    WAIT FOR 20 ns;
END PROCESS clk_process;

-- Stimulus process
stim_proc: PROCESS
BEGIN
    -- Initialize signals
    reset <= '0';
    WAIT FOR 100 ns;
    reset <= '1';
    WAIT FOR 100 ns;
    
    -- Simulate button presses
    -- Initial state: no buttons pressed
    WAIT FOR 1 ms;
    
    -- Player presses btn_left
    btn_left <= '1';
    WAIT FOR 100 ms;
    btn_left <= '0';
    WAIT FOR 200 ms;
    
    -- Player presses btn_right
    btn_right <= '1';
    WAIT FOR 100 ms;
    btn_right <= '0';
    WAIT FOR 200 ms;
    
    -- Player quickly presses btn_left twice
    btn_left <= '1';
    WAIT FOR 50 ms;
    btn_left <= '0';
    WAIT FOR 50 ms;
    btn_left <= '1';
    WAIT FOR 50 ms;
    btn_left <= '0';
    WAIT FOR 200 ms;
    
    -- Player presses btn_right
    btn_right <= '1';
    WAIT FOR 100 ms;
    btn_right <= '0';
    WAIT FOR 200 ms;
    
    -- Player presses both buttons almost simultaneously
    btn_left <= '1';
    WAIT FOR 10 ms;
    btn_right <= '1';
    WAIT FOR 100 ms;
    btn_left <= '0';
    WAIT FOR 10 ms;
    btn_right <= '0';
    WAIT FOR 200 ms;
    
    -- End of test
    WAIT;
END PROCESS stim_proc;

END racegame_top_arch;
